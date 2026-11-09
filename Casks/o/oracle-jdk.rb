cask "oracle-jdk" do
  arch arm: "aarch64", intel: "x64"

  version "27.0.1.0.3"
  sha256 arm:   "4deaa161639c138f433a4f50b212fc2120ec6ff751195ee068bb368599aa36d5",
         intel: "f976ae7e314387cb370ee3e3445f5f6c5703ac4d62e788b31ff398c5578377e0"

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
