cask "oracle-jdk@25" do
  arch arm: "aarch64", intel: "x64"

  version "25.0.5"
  sha256 arm:   "f0db77a61aab38456acb39d5b600b7d2dac876b89e68550b9bb75c6fffb0621b",
         intel: "65496cfbd0f369d643f2e2059fa3400d9055bd84e4f6a995d191bf3ced733bf4"

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
