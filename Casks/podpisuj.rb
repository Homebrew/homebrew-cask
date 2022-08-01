cask "podpisuj" do
  version "5.6.41"
  sha256 "9887f16600a4f78cbd219dafbd6e2dd158fa55a180001ed5f4d9b44161ebb84d"

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
