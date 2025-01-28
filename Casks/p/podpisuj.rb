cask "podpisuj" do
  version "5.7.83"
  sha256 "ea5a26ce93e28dbab47b0877c7add6ca9786673375ed27aa4641a8b9aad9a136"

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
