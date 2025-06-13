cask "java@beta" do
  arch arm: "aarch64", intel: "x64"

  version "26,2"
  sha256 arm:   "241d8e83c06ab225745e54333d7c15433dcb55e9a25a9757d90c6f71708dc88b",
         intel: "5b4af5d00b4f91181599a44778c888b5080f5fffe8e53291c2af4e46fc9f2647"

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
