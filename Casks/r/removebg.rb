cask "removebg" do
  version "2.0.0"
  sha256 "d0e2a01883384c716e7de333eee55cea337f168fd274f871431d19c7699d7ea2"

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
