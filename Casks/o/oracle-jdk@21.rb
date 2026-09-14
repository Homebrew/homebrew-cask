cask "oracle-jdk@21" do
  arch arm: "aarch64", intel: "x64"

  version "21.0.12.1"
  sha256 arm:   "03c760d6196976679dfd068cba2c1ac4c6de6dd044c2aaa8867216236369dd61",
         intel: "c295949c99defeb10fdc7064f9d2e186d1706c2d9f04e5626838c61319d007b4"

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
