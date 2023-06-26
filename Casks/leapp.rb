cask "leapp" do
  arch arm: "-arm64"

  version "0.18.1"
  sha256 arm:   "adc42dd7693803620c83d5b332859bc90ba1dff25febf6e32ebf106d62a8009b",
         intel: "2ca7464e62e2b9444334e474c2dfa8d490b28233f7bedb44071edf22a480972c"

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
