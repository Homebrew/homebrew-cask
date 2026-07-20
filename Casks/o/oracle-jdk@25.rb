cask "oracle-jdk@25" do
  arch arm: "aarch64", intel: "x64"

  version "25.0.3"
  sha256 arm:   "bcf47ebedda442f9d56c1286e51a5432011a19edbc8141d22d6e30cd31c77e7c",
         intel: "493ad687952aac54a1678ada76a8d6a673943aa8224446cad720c2248aea0ca4"

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
