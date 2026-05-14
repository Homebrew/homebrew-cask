cask "switch-mac" do
  version "0.1.8"
  sha256 "d28b18c0f57e9caa23b04fd6ac1d54f0c6d7241642953d853440b84431ec91bd"

  url "https://github.com/Sanyam-G/switch/releases/download/v#{version}/Switch-#{version}.dmg",
      verified: "github.com/Sanyam-G/switch/"
  name "Switch"
  desc "Keyboard-driven window switcher that cycles windows, not apps"
  homepage "https://switch-dev.sanyamgarg.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "Switch.app"

  zap trash: [
    "~/Library/Application Scripts/com.sanyamgarg.switch",
    "~/Library/Caches/com.sanyamgarg.switch",
    "~/Library/Containers/com.sanyamgarg.switch",
    "~/Library/Preferences/com.sanyamgarg.switch.plist",
    "~/Library/Saved Application State/com.sanyamgarg.switch.savedState",
  ]
end
