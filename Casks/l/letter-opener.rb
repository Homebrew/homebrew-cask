cask "letter-opener" do
  version "15.0.2"
  sha256 "7f38bb02b8a431d7698a15dfd6e7b48a56f69c22a3d18dd85b625a01b4303375"

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

  uninstall launchctl: [
              "app.letteropener.agent",
              "app.letteropener.softwareupdate.agent",
            ],
            pkgutil:   [
              "pkg.app.letteropener.*",
              "com.restoroot.Letter-Opener",
            ]
end
