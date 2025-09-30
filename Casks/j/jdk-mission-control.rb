cask "jdk-mission-control" do
  arch arm: "aarch64", intel: "x64"

  version "9.1.1,02"
  sha256 arm:   "f5821aba0a913212e5d401ce9ead3810a411c4a3d20dd4a53bb8b4bc38960f16",
         intel: "cffdcbf09f720139c0a799e4248a94b73401f66e8d824eb9b81f6e2988ed2cba"

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
    depends_on_java "17"
  end
end
