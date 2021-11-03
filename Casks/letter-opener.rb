cask "letter-opener" do
  version "14.0.1"
  sha256 "0cf02609d5111106665d548437aaa69c2af2a75e3f35dcf3cc5203a5118dbcc9"

  url "https://s3.amazonaws.com/LetterOpener/dmg/Letter-Opener-#{version}.zip",
      verified: "s3.amazonaws.com/LetterOpener/dmg/"
  name "Letter Opener"
  desc "Open winmail.dat files Automatically in Mail.app"
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
