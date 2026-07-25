cask "oracle-jdk" do
  arch arm: "aarch64", intel: "x64"

  version "26.0.2"
  sha256 arm:   "16a409176249b90715e621bfc3bd8ea4894c236771fef57eac79dfd01109b8f2",
         intel: "4bb7958bf82af3c2e4c141e57f1b8591429ba1b8a295a0b6ae44444f0e23c0f2"

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
