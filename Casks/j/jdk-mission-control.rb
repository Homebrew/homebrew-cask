cask "jdk-mission-control" do
  arch arm: "aarch64", intel: "x64"

  version "9.1.2,05"
  sha256 arm:   "c31c384e1d41e03a24826f0b3c6719f82538ee3a0045dee633e2922b38074676",
         intel: "dba06224d27461cf1378260dc23c54f4e581bb91002986abc8e03ebb5b81f281"

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

  depends_on macos: ">= :big_sur"

  app "jmc-#{version.csv.first}_macos-#{arch}/JDK Mission Control.app"

  zap trash: [
    "~/.jmc",
    "~/Library/Preferences/org.openjdk.jmc.plist",
  ]

  caveats do
    depends_on_java "21"
  end
end
