cask "keyty" do
  version "1.4.0"
  sha256 "06bd8714bfa73223eb7c9faad0fdba30f95a2a9a0edda5b693a3283314a9e00a"

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
