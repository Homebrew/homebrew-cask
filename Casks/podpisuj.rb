cask "podpisuj" do
  version "5.7.29"
  sha256 "8536063b18597424d0033b0abc070b7c687c58883b8bfa9aad6648cff87cbac8"

  url "https://www.podpisuj.sk/staticweb/install/podpisuj-#{version}.dmg"
  name "Podpisuj"
  desc "Application for electronic signing and validation of signatures"
  homepage "https://www.podpisuj.sk/"

  livecheck do
    url "https://www.podpisuj.sk/staticweb/install/"
    regex(/href=.*?podpisuj[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
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
