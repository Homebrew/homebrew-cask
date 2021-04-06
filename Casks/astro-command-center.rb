cask "astro-command-center" do
  version :latest
  sha256 :no_check

  url "https://update.astrogaming.com/kuiper/ASTROCommandCenter.dmg"
  name "ASTRO Command Center"
  homepage "https://www.astrogaming.com/"

  app "ASTRO Command Center.app"

  zap trash: [
    "~/Library/Application Support/Astro Gaming",
    "~/Library/Preferences/com.http-www-astrogaming-com.ASTRO Command Center.plist",
    "~/Library/Saved Application State/com.astrogaming.acc.savedState",
  ]
end
