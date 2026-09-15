cask "oracle-jdk" do
  arch arm: "aarch64", intel: "x64"

  version "27"
  sha256 arm:   "26b9066743fa14737ceea7edca42f7fde40651c64b8e1085865795bc588ca7e0",
         intel: "4f875ea6a8c198f42ada6aa9adafe9cc670cf6cb2c5fdd59e5158679c21efef2"

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
