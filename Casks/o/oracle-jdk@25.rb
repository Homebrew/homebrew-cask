cask "oracle-jdk@25" do
  arch arm: "aarch64", intel: "x64"

  version "25.0.5.0.3"
  sha256 arm:   "fb532ae527548d462dc4942eca1289aa8668fb08c9e6a5ce59eb3223a13ddbf6",
         intel: "f85d4f0a4821749c411bcd9e14a2fa7a70b361eeb952ff370e5d07efd745b77f"

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
