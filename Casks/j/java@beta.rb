cask "java@beta" do
  arch arm: "aarch64", intel: "x64"

  sha256 arm:   "05caa75bf85030b7300049afc336cfaa05f797a98e76cca196d4ccae0a0e4541",
         intel: "9a4028a08994fa37f6cabfcf70683464b6f56b7b001601286192d90cf000b7fa"

  on_arm do
    version "28,2"
  end
  on_intel do
    version "27,22"
  end

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

  depends_on :macos

  artifact "jdk-#{version.csv.first}.jdk", target: "/Library/Java/JavaVirtualMachines/openjdk-#{version.csv.first}.jdk"

  zap trash: "~/Library/Saved Application State/net.java.openjdk*.savedState"
end
