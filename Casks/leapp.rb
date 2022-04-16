cask "leapp" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "0.11.0"

  if Hardware::CPU.intel?
    sha256 "d8395dce82ee759ead020212d782abcd56ceaaa88d37ba875e3d13589c7203bf"
  else
    sha256 "51021c3b4e005122e4827d7c2faa4770fa3e7d6ce6b91840ecf3cd9fe93f2ece"
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
