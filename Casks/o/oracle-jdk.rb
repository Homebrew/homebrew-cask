cask "oracle-jdk" do
  arch arm: "aarch64", intel: "x64"

  version "26"
  sha256 arm:   "02d6e20526ae48c1494ec8352b54b1138fd588fd670e0f108ff0854d9202c361",
         intel: "34f2487458592f6ad953b6feaef9ba3c247a5f32e9c984f179cb6cfbba042269"

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

  pkg "JDK #{version}.pkg"

  uninstall pkgutil: "com.oracle.jdk-#{version}"

  # No zap stanza required

  caveats do
    license "https://www.oracle.com/downloads/licenses/no-fee-license.html"
  end
end
