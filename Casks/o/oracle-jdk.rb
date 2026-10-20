cask "oracle-jdk" do
  arch arm: "aarch64", intel: "x64"

  version "27.0.1"
  sha256 arm:   "8be6d0c204bfb3929708b5a2f4a19e190674ceb3f6d1bfcd3268db62c8d3ac10",
         intel: "831f5febe784331f0002c130434fdbfacf05536b5cfc771802885837958e276f"

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
