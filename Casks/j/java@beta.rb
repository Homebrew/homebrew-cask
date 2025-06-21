cask "java@beta" do
  arch arm: "aarch64", intel: "x64"

  version "26,3"
  sha256 arm:   "13fe791b6776e8a53627a79b87c10858d9bf70a1105c59ef103a766e6ce2b868",
         intel: "a9f6869981b4aa1c3ddf2a0fe585f694dfe3c3bd140699ec61a10ba3e2c8e16b"

  url "https://download.java.net/java/early_access/jdk#{version.major}/#{version.csv.second}/GPL/openjdk-#{version.csv.first}-ea+#{version.csv.second}_macos-#{arch}_bin.tar.gz"
  name "OpenJDK Early Access Java Development Kit"
  desc "Early access development kit for the Java programming language"
  homepage "https://jdk.java.net/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/GPL/openjdk-(\d+)-ea\+(\d+)_macos-#{arch}_bin\.t}i)
    strategy :page_match do |page, regex|
      ea_text = page[%r{<h\d+>\s*Early\s+access:.+?</h\d+>}im]
      next unless ea_text

      highest_version = ea_text.scan(/JDK\s*(\d+)/i)
                               .flatten
                               .uniq
                               .map { |v| Version.new(v) }
                               .max
      next unless highest_version

      version_page = Homebrew::Livecheck::Strategy.page_content("https://jdk.java.net/#{highest_version}/")
      version_page[:content]&.scan(regex)&.map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  artifact "jdk-#{version.csv.first}.jdk", target: "/Library/Java/JavaVirtualMachines/openjdk-#{version.csv.first}.jdk"

  zap trash: "~/Library/Saved Application State/net.java.openjdk*.savedState"
end
