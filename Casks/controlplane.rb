cask "controlplane" do
  version "1.6.7"
  sha256 "beb444b8117ed91898921a6babc384501dfd92679f5b718fceb6d3aa7a0bf651"

  url "https://github.com/dustinrue/ControlPlane/releases/download/#{version}/ControlPlane-#{version}.dmg",
      verified: "github.com/dustinrue/ControlPlane/"
  name "ControlPlane"
  homepage "https://www.controlplaneapp.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "ControlPlane.app"

  zap trash: "~/Library/Preferences/com.dustinrue.ControlPlane.plist"
end
