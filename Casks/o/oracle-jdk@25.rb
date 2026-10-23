cask "oracle-jdk@25" do
  arch arm: "aarch64", intel: "x64"

  version "25.0.5.0.2"
  sha256 arm:   "d746c94ccd928aba24ddc7f5034ebf4a36b9af5b77868315f7b5e9ca64123b55",
         intel: "47589c36f912cd2709706ed53dbe2f03d5e546e47633233214967a87fdfd9ad8"

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
