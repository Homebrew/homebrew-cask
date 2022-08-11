cask "jquake" do
  arch = Hardware::CPU.intel? ? "intel" : "arm64"

  version "1.7.1"

  if Hardware::CPU.intel?
    sha256 "9b72c4c344e1fd93e00e71ac37acad85258b619f756d8749a323d11b65bd36e2"
  else
    sha256 "e0983211875664bc60422b50a2caf4307e34787cdb46112f39445b2a656fe9bd"
  end

  url "https://fleneindre.github.io/downloads/JQuake_#{version}_mac_#{arch}.dmg",
      verified: "fleneindre.github.io/downloads/"
  name "JQuake"
  desc "Real-time earthquake monitoring software for Japan"
  homepage "https://jquake.net/"

  livecheck do
    url "https://fleneindre.github.io/version.json"
    strategy :page_match do |page|
      JSON.parse(page)["version"]
    end
  end

  depends_on macos: ">= :catalina"

  app "JQuake.app"

  zap trash: [
    "~/Library/Application Support/JQuake",
    "~/Library/Saved Application State/net.jquake.java.savedState",
  ]
end
