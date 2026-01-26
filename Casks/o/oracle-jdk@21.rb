cask "oracle-jdk@21" do
  arch arm: "aarch64", intel: "x64"

  version "21.0.10"
  sha256 arm:   "4bb8f29076bf7d36a5901ca4637471c3774ac0ff671c39ba8b179e18f8390971",
         intel: "a65f79ef8ab9629ac4c1ab5e187a88021c234653c9d5ab9529598f800d7846e4"

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

  pkg "JDK #{version}.pkg"

  uninstall pkgutil: "com.oracle.jdk-#{version}"

  # No zap stanza required

  caveats do
    license "https://www.oracle.com/downloads/licenses/no-fee-license.html"
  end
end
