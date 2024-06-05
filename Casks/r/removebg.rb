cask "removebg" do
  version "2.2.0"
  sha256 "61c137332ae57b441279cea57ad5758df57ed109acd8c24a962478455d068f1d"

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
