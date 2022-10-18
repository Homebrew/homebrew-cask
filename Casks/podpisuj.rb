cask "podpisuj" do
  version "5.6.44"
  sha256 "ad8d5ab0279ba2bd1ac44f36afe7d415c1c7fffe0f545d76d29f110a28379b51"

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
