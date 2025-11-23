cask "oracle-jdk@25" do
  arch arm: "aarch64", intel: "x64"

  version "25.0.1"
  sha256 arm:   "c2a946e168a1aef8be978fb955bfa1d589b387c29663d0fe14c3693e7841fa97",
         intel: "eba1119067692a109737e7c3fff30c773204521e8e2d08b34fd211d642e30cdc"

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

  pkg "JDK #{version}.pkg"

  uninstall pkgutil: "com.oracle.jdk-#{version}"

  # No zap stanza required

  caveats do
    license "https://www.oracle.com/downloads/licenses/no-fee-license.html"
  end
end
