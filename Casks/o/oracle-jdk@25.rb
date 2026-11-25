cask "oracle-jdk@25" do
  arch arm: "aarch64", intel: "x64"

  version "25.0.5.1"
  sha256 arm:   "741d10f7e440d00a87f1d09db679b100f79f5566c9f875b957bf97e639f6939b",
         intel: "3cc760d1a406e77bcabee2515567862fde7c36d1d6141483185f78cff8af57ef"

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

  zap :not_required

  caveats do
    license "https://www.oracle.com/downloads/licenses/no-fee-license.html"
  end
end
