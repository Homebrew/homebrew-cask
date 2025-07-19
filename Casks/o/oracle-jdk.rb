cask "oracle-jdk" do
  arch arm: "aarch64", intel: "x64"

  version "24.0.2"
  sha256 arm:   "5017f5e9938f4c214b5ca9843fe0351a1f90c8db50dd369ede840dabe9ac76d8",
         intel: "eb5a134fece0fd8ffc396e44bc4efd6eb48f1c2f0812bebaeab02942bc617605"

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

  depends_on macos: ">= :mojave"

  pkg "JDK #{version}.pkg"

  uninstall pkgutil: "com.oracle.jdk-#{version}"

  # No zap stanza required

  caveats do
    license "https://www.oracle.com/downloads/licenses/no-fee-license.html"
  end
end
