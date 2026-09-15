cask "oracle-jdk" do
  arch arm: "aarch64", intel: "x64"

  version "26.0.2.1"
  sha256 arm:   "694d2e9eb30f7612acca4f82d13c008782dd936569e2cc58c2f73cfd46d0695c",
         intel: "37e8f23640ed492611135aebef6a52ab25ae2c6d5d2ba07119554c1ad6e24051"

  url "https://download.oracle.com/java/#{version.major}/archive/jdk-#{version}_macos-#{arch}_bin.dmg"
  name "Oracle Java Standard Edition Development Kit"
  desc "JDK from Oracle"
  homepage "https://www.oracle.com/java/technologies/downloads/"

  livecheck do
    url "https://java.oraclecloud.com/currentJavaReleases"
    strategy :json do |json|
      json["items"]&.filter_map { |item| item["releaseVersion"] }
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
