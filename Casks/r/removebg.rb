cask "removebg" do
  version "2.2.2"
  sha256 "e97ae10fc7584ef78fac5b5f0f650b6ce705b39782bbd87d0605b2e5f3e29bb3"

  url "https://static.remove.bg/download/removebg-for-mac-#{version}.dmg"
  name "remove.bg"
  desc "Automatic bulk background removal"
  homepage "https://www.remove.bg/"

  livecheck do
    url "https://www.remove.bg/windows-mac-linux/download"
    regex(%r{/removebg[._-]for[._-]mac[._-](\d+(?:\.\d+)+)\.dmg}i)
  end

  app "remove.bg.app"

  zap trash: [
    "~/Library/Application Support/remove.bg-desktop",
    "~/Library/Logs/remove.bg",
    "~/Library/Preferences/bg.remove.mac.new.plist",
    "~/Library/Saved Application State/bg.remove.mac.new.savedState",
  ]
end
