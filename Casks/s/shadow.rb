cask "shadow" do
  arch arm: "arm64", intel: "x64"

  version "8.0.10201"
  sha256 arm:   "b310f3976809f9118586f238d48c58fdd213463795df37417ea3dc91d12e5016",
         intel: "77268fd3c1ad63b2704d9d805e314c53997d60aae674a7543986a8957dc5c20f"

  url "https://update.shadow.tech/launcher/prod/mac/#{arch}/ShadowPC-#{version}.dmg"
  name "Shadow"
  desc "Online virtualized computer"
  homepage "https://shadow.tech/"

  livecheck do
    url "https://update.shadow.tech/launcher/prod/mac/#{arch}/latest-mac.yml"
    strategy :electron_builder
  end

  app "Shadow PC.app"

  zap trash: [
    "~/Library/Application Support/Shadow",
    "~/Library/Preferences/com.electron.shadow.helper.plist",
    "~/Library/Preferences/com.electron.shadow.plist",
  ]
end
