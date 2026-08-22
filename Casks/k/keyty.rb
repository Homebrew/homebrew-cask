cask "keyty" do
  version "1.3.0"
  sha256 "c2c1b046dfdf5789f91bbdf360b6c8f899e7bea0a45bb124e5d36359ef12f592"

  url "https://github.com/keytyapp/Keyty/releases/download/v#{version}/Keyty.dmg"
  name "Keyty"
  desc "Keyboard and mouse input visualizer"
  homepage "https://keyty.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :big_sur

  app "Keyty.app"

  zap trash: [
    "~/Library/Preferences/app.keyty.Keyty.plist",
    "~/Library/Saved Application State/app.keyty.Keyty.savedState",
  ]
end
