cask "oracle-jdk" do
  arch arm: "aarch64", intel: "x64"

  version "25.0.2"
  sha256 arm:   "b858c8691ff69d5a7c75146333468ed93c8ea32b3fec8d6c11c726b9e651e9b2",
         intel: "c9b0f03c4da4744d01221fa3ee406db91862c651cf9f8a76fc6f706b1e106628"

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
