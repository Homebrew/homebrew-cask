cask "oracle-jdk" do
  arch arm: "aarch64", intel: "x64"

  version "26.0.1"
  sha256 arm:   "66db47897061820140e452b4fbf55afa3e12acbff7a9194903a7bd9e7de15b5e",
         intel: "f66c86ea5c647d3e10c67bfecd9454ac9c33a7806b988cf24eb5ca8addcff1eb"

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
