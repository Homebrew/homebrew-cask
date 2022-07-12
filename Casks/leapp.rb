cask "leapp" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "0.13.0"

  if Hardware::CPU.intel?
    sha256 "16a7ff0fee80d07b51c8c7096f3324808be26fa23c37e8bb5c7c68a84e4bbc31"
  else
    sha256 "cfd5f4471b4cd517b4129385702783bd67981d37bb7f1e19672e3b4e84aacbd1"
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
