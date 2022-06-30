cask "letter-opener" do
  version "14.1.3"
  sha256 "157530cae59bccbbec536bbc74870519b2edc80f0d9596ce8fb9929372fa13ca"

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
