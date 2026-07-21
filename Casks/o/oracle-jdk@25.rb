cask "oracle-jdk@25" do
  arch arm: "aarch64", intel: "x64"

  version "25.0.4"
  sha256 arm:   "6561634f706ab78551ddb4f7404a1efdac4c5f6db7bcb87e50c3868833d2d770",
         intel: "177e6b688cada05bf096326156d18dd36a97116e37ed7f4502ee55424e475d82"

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
