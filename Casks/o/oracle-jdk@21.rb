cask "oracle-jdk@21" do
  arch arm: "aarch64", intel: "x64"

  version "21.0.11"
  sha256 arm:   "c3b49489239c9e3d5910118825dbd524fb59f0ac3620425310bc64eea71b0232",
         intel: "82e20b86b970661798533b68454ac20e3d9bb22fa9462bf7ab0fdf731fd75bee"

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
