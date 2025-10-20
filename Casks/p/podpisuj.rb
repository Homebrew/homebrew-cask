cask "podpisuj" do
  version "5.7.112"
  sha256 "17bcb3794a14282907d6615587f2e574cd0e03fa5390c2d46b87d9e6553e2650"

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
    requires_rosetta
  end
end
