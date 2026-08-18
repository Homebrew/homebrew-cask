cask "oracle-jdk@25" do
  arch arm: "aarch64", intel: "x64"

  version "25.0.4.1"
  sha256 arm:   "f124cbe3a63cedc3ac228a513249bee2c6070d8c57bc2092645342405de0a904",
         intel: "62eee8f5bbd8c9e121b992057a8b9a0925f2f1e22d965b6698e922e1766b6e46"

  url "https://download.oracle.com/java/#{version.major}/archive/jdk-#{version}_macos-#{arch}_bin.dmg"
  name "Oracle Java Standard Edition Development Kit"
  desc "JDK from Oracle"
  homepage "https://www.oracle.com/java/technologies/downloads/"

  livecheck do
    url "https://java.oraclecloud.com/currentJavaReleases/#{version.major}"
    strategy :json do |json|
      json["releaseVersion"]
    end
  end

  depends_on :macos

  pkg "JDK #{version}.pkg"

  uninstall pkgutil: "com.oracle.jdk-#{version}"

  # No zap stanza required

  caveats do
    license "https://www.oracle.com/downloads/licenses/no-fee-license.html"
  end
end
