cask "leapp" do
  arch arm: "-arm64"

  version "0.13.4"

  on_intel do
    sha256 "b166e133c673dacc628d802f2a08426d2bd0b49451dcf215a011134b10b7cc35"
  end
  on_arm do
    sha256 "f58025ac1ae75d60113c54e9d7efd1e54ed3c32f2a94abff32fd8988ded0735f"
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
