cask "oracle-jdk@21" do
  arch arm: "aarch64", intel: "x64"

  version "21.0.8"
  sha256 arm:   "a861a3868e82f9d7f7d985a9e7d918a6ef758ea665086ddfa7dabc9a001b001c",
         intel: "0ae0c4ed8b3ac7a948c4d9f4361bf50b9a2dcd0cb5cc9fbc4d305c6cb6590add"

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

  depends_on macos: ">= :mojave"

  pkg "JDK #{version}.pkg"

  uninstall pkgutil: "com.oracle.jdk-#{version}"

  # No zap stanza required

  caveats do
    license "https://www.oracle.com/downloads/licenses/no-fee-license.html"
  end
end
