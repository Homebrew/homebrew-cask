cask "lightburn" do
  version "1.4.05"
  sha256 "c521818399f5a6fb73f9916125c4cf416590b7e4ad55c272b3b34e22969d64d0"

  url "https://github.com/LightBurnSoftware/deployment/releases/download/#{version}/LightBurn.V#{version}.dmg",
      verified: "github.com/LightBurnSoftware/deployment/"
  name "LightBurn"
  desc "Better software for laser cutters"
  homepage "https://lightburnsoftware.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "LightBurn.app"

  zap trash: [
    "~/Library/Preferences/LightBurn",
    "~/Library/Saved Application State/com.LightBurnSoftware.LightBurn.savedState",
  ]
end
