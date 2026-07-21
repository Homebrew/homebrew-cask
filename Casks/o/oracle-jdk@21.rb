cask "oracle-jdk@21" do
  arch arm: "aarch64", intel: "x64"

  version "21.0.12"
  sha256 arm:   "952d6285bb6508836548618d1716c2bcb6f626f03a3bbadda0b70835f2e39c0d",
         intel: "8a54313c9d6925a206c8d7107751bcce9ccdaab46f5e903c35bb2de712f18262"

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
