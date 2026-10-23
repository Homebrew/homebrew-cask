cask "oracle-jdk" do
  arch arm: "aarch64", intel: "x64"

  version "27.0.1.0.2"
  sha256 arm:   "0b2540d5a7ddd00c950e2a3f32c2489b0e447f8584f26779dc3541275d96d1d9",
         intel: "af3083588c44385e463bddecce0b80fbc9e6f12f16b294fca40e95593a6aa6cf"

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
