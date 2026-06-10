cask "alivecolors" do
  version "11.2.5301"
  sha256 :no_check

  url "https://alivecolors.sfo2.cdn.digitaloceanspaces.com/alivecolors.dmg",
      verified: "alivecolors.sfo2.cdn.digitaloceanspaces.com/"
  name "AliveColors"
  desc "Image editor with painting, retouching, and AI-based effects"
  homepage "https://alivecolors.com/en/index.php"

  livecheck do
    url "https://alivecolors.com/en/download.php"
    regex(/AliveColors (\d+(?:\.\d+)+)/i)
  end

  depends_on macos: :catalina

  app "AliveColors.app"

  zap trash: [
    "~/Library/Caches/com.akvis.AliveColors",
    "~/Library/HTTPStorages/com.akvis.AliveColors",
    "~/Library/Preferences/com.akvis.AliveColors.plist",
    "~/Library/Saved Application State/com.akvis.AliveColors.savedState",
  ]
end
