cask "letter-opener" do
  version "15.0.0"
  sha256 "3a69675611faad721c254ea0d72dcd9b6e5b4a370c64cdbb538c3477551e63a2"

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
