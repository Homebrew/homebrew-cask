cask "podpisuj" do
  version "5.5.37"
  sha256 "b3ae6ce6b3bcf76787dbb01c6320f6a7b72f8bad3ab30121a20a520d023d5fd9"

  url "https://www.podpisuj.sk/staticweb/install/podpisuj-#{version}.dmg"
  name "Podpisuj"
  desc "Application for electronic signing and validation of signatures"
  homepage "https://www.podpisuj.sk/"

  livecheck do
    url "https://www.podpisuj.sk/o/portal-services3/client/appVersion?ext=dmg&version=0"
    regex(/(\d+(?:\.\d+)+)/i)
  end

  auto_updates true

  app "Podpisuj.app"

  zap trash: [
    "~/.archimetes/signer",
    "~/Library/Preferences/com.archimetes.podpisuj.desktopapp.Podpisuj.plist",
    "~/Library/Saved Application State/com.archimetes.podpisuj.desktopapp.Podpisuj.savedState",
  ]
end
