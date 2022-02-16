cask "podpisuj" do
  version "5.5.39"
  sha256 "06141b49385d58ddfce030c8aae7a89e4db3390cc832263c58d5ebec8103b0a2"

  url "https://www.podpisuj.sk/staticweb/install/podpisuj-#{version}.dmg"
  name "Podpisuj"
  desc "Application for electronic signing and validation of signatures"
  homepage "https://www.podpisuj.sk/"

  livecheck do
    url "https://www.podpisuj.sk/o/portal-services3/client/appVersion?ext=dmg&version=0"
    regex(/(\d+(?:\.\d+)+)/i)
  end

  app "Podpisuj.app"

  zap trash: [
    "~/.archimetes/signer",
    "~/Library/Preferences/com.archimetes.podpisuj.desktopapp.Podpisuj.plist",
    "~/Library/Saved Application State/com.archimetes.podpisuj.desktopapp.Podpisuj.savedState",
  ]

  caveats do
    license "https://www.podpisuj.sk/privacy"
  end
end
