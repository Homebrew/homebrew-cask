cask "letter-opener" do
  version "14.0.2"
  sha256 "e962368bdb8ea5b88c216710c8f88b0c8f79dd351995db2338484d1d9854576c"

  url "https://s3.amazonaws.com/LetterOpener/dmg/Letter-Opener-#{version}.zip",
      verified: "s3.amazonaws.com/LetterOpener/dmg/"
  name "Letter Opener"
  desc "Display winmail.dat files directly in Mail.app"
  homepage "https://winmail.help/"

  livecheck do
    url "https://winmail.help/letter-opener-for-macos-mail/download"
    regex(%r{Version:\s*<strong>(\d+(?:\.\d+)+)</strong>}i)
  end

  depends_on macos: ">= :mojave"

  pkg "Install Letter Opener.pkg"

  uninstall pkgutil:   [
    "pkg.app.letteropener.*",
    "com.restoroot.Letter-Opener",
  ],
            launchctl: [
              "app.letteropener.agent",
              "app.letteropener.softwareupdate.agent",
            ]
end
