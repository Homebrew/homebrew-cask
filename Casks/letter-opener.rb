cask "letter-opener" do
  version :latest
  sha256 :no_check

  url "https://winmail.help/LetterOpenerPro/download"
  name "Letter Opener"
  desc "Open winmail.dat files Automatically in Mail.app"
  homepage "https://winmail.help/"

  pkg "Install\ Letter\ Opener.pkg"

  uninstall pkgutil:   [
    "pkg.app.letteropener.*",
    "com.restoroot.Letter-Opener",
  ],
            launchctl: [
              "app.letteropener.agent",
              "app.letteropener.softwareupdate.agent",
            ]
end
