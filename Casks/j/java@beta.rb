cask "java@beta" do
  arch arm: "aarch64", intel: "x64"

  version "24,35"
  sha256 arm:   "04436b666122e650a0bbd31941b28a068f4fee2c84bb0f839eefe0ca19c67308",
         intel: "44792f55d0e05ad8cea40bd85363a82615de6d8d24427a2371681ccfef79668a"

  url "https://download.java.net/java/early_access/jdk#{version.major}/#{version.csv.second}/GPL/openjdk-#{version.csv.first}-ea+#{version.csv.second}_macos-#{arch}_bin.tar.gz"
  name "OpenJDK Early Access Java Development Kit"
  desc "Early access development kit for the Java programming language"
  homepage "https://jdk.java.net/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/GPL/openjdk-(\d+)-ea\+(\d+)_macos-#{arch}_bin\.t}i)
    strategy :page_match do |page, regex|
      latest_major = page[/Early\s*access:.*?JDK\s*(\d+)/i, 1]
      next if latest_major.blank?

      version_page = Homebrew::Livecheck::Strategy.page_content("https://jdk.java.net/#{latest_major}/")
      version_page[:content]&.scan(regex)&.map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  artifact "jdk-#{version.csv.first}.jdk", target: "/Library/Java/JavaVirtualMachines/openjdk-#{version.csv.first}.jdk"

  zap trash: "~/Library/Saved Application State/net.java.openjdk*.savedState"
end
