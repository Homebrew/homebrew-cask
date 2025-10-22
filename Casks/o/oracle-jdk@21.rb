cask "oracle-jdk@21" do
  arch arm: "aarch64", intel: "x64"

  version "21.0.9"
  sha256 arm:   "3882320a2e98dff75f1edf60ff0f9df2125aaa6b6676ac07b59338edffc7785d",
         intel: "57f2613a448a40aae090aceee9e076e8281e95f874c993b75752569309839f15"

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
