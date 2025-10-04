cask "oracle-jdk@25" do
  arch arm: "aarch64", intel: "x64"

  version "25"
  sha256 arm:   "a692c69118561bc0f2267ff8045cf5915b89aa7306272440155cb114f9014844",
         intel: "a7799b05a0f378572fc617893b92db7cc823cb5ae71726b2d1db79e65094b431"

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
