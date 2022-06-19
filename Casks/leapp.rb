cask "leapp" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "0.12.2"

  if Hardware::CPU.intel?
    sha256 "59b837b07ee9726a8d9645d72ae71d46f5863d5ca88b382d696d02af7bb8772f"
  else
    sha256 "22a76bc1f83e84dc8b891fe4f1bc245316097376b8eb0231c7822590b381039a"
  end

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
