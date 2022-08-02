cask "leapp" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "0.13.1"

  if Hardware::CPU.intel?
    sha256 "0a47a3722c0c3bc552c434aace891a619fc45f5fa97c0d2963f13489e20f0b47"
  else
    sha256 "e45f58f868afe7a4757557982ac30f989fc89491366b268b9d527707445a8105"
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
