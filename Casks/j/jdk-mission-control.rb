cask "jdk-mission-control" do
  arch arm: "aarch64", intel: "x64"

  version "9.1.0,07"
  sha256 arm:   "6f3b581ff8afe0e919297d533fb3e646a687235ad591eabe2b7294a5007b3a45",
         intel: "b860ff69e2c068bbbe28b53e949f3074151a6d0becb7cbe5b056d75111722ad3"

  url "https://download.java.net/java/GA/jmc#{version.major}/#{version.csv.second}/binaries/jmc-#{version.csv.first}_macos-#{arch}.tar.gz"
  name "JDK Mission Control"
  desc "Tools to manage, monitor, profile and troubleshoot Java applications"
  homepage "https://jdk.java.net/jmc/#{version.major}/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/(\d+)/binaries/jmc[._-]v?(\d+(?:\.\d+)*)[._-]macos[._-]#{arch}\.t}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
    end
  end

  app "jmc-#{version.csv.first}_macos-#{arch}/JDK Mission Control.app"

  zap trash: [
    "~/.jmc",
    "~/Library/Preferences/org.openjdk.jmc.plist",
  ]

  caveats do
    depends_on_java "17"
  end
end
