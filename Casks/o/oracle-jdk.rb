cask "oracle-jdk" do
  arch arm: "aarch64", intel: "x64"

  version "27.0.1.1"
  sha256 arm:   "0cbbbdc9fc2388a71b86e15cfb04104a0e229bddf76c86c2b24bb07579caad43",
         intel: "83e2268dc5a2661bf687c22fbdbc069e4ee6eeb0d68b6d2a8c045507aba6faa7"

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

  zap :not_required

  caveats do
    license "https://www.oracle.com/downloads/licenses/no-fee-license.html"
  end
end
