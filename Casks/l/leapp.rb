cask "leapp" do
  arch arm: "-arm64"

  version "0.22.0"
  sha256 arm:   "0cd0ada256993ac73505c8ea97bd4dbf38f4771771addbb60a59dd67349fbd06",
         intel: "1e6b610c1c6315749a1f9da8fde9fd10e7b8ca470099957b54605ac8b96de69d"

  url "https://asset.noovolari.com/#{version}/Leapp-#{version}#{arch}.dmg",
      verified: "asset.noovolari.com/"
  name "Leapp"
  desc "Cloud credentials manager"
  homepage "https://www.leapp.cloud/"

  livecheck do
    url "https://asset.noovolari.com/latest/latest-mac.yml"
    strategy :electron_builder
  end

  app "Leapp.app"

  zap trash: [
    "~/.Leapp",
    "~/Library/Application Support/Leapp",
    "~/Library/Logs/Leapp",
    "~/Library/Preferences/com.leapp.app.plist",
    "~/Library/Saved Application State/com.leapp.app.savedState",
  ]
end
