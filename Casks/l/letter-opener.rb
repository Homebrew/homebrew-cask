cask "letter-opener" do
  version "16.0.7"
  sha256 "b2bf3662a2c1f27a042cf3524ce23d8fd7c8614134416a68e193a3bad7f3d1cf"

  url "https://s3.amazonaws.com/LetterOpener/dmg/Letter-Opener-#{version}.zip",
      verified: "s3.amazonaws.com/LetterOpener/dmg/"
  name "Letter Opener"
  desc "Display winmail.dat files directly in Mail.app"
  homepage "https://winmail.help/"

  livecheck do
    url "https://winmail.help/letter-opener-for-macos-mail/download"
    regex(%r{Version:\s*<strong>(\d+(?:\.\d+)+)</strong>}i)
  end

  pkg "Install Letter Opener.pkg"

  uninstall launchctl: [
              "app.letteropener.agent",
              "app.letteropener.softwareupdate.agent",
            ],
            pkgutil:   [
              "com.restoroot.Letter-Opener",
              "pkg.app.letteropener.*",
            ]

  zap trash: [
    "~/Library/Application Scripts/2WB96AW889.app.letteropener",
    "~/Library/Application Scripts/com.restoroot.Letter-Opener",
    "~/Library/Application Scripts/com.restoroot.Letter-Opener.QuickLook-Extension",
    "~/Library/Application Support/app.letteropener.agent",
    "~/Library/Caches/app.letteropener.agent",
    "~/Library/Containers/com.restoroot.Letter-Opener",
    "~/Library/Containers/com.restoroot.Letter-Opener.QuickLook-Extension",
    "~/Library/Group Containers/2WB96AW889.app.letteropener",
    "~/Library/HTTPStorages/app.letteropener.agent",
    "~/Library/HTTPStorages/app.letteropener.softwareupdate",
    "~/Library/Preferences/app.letteropener.agent.plist",
    "~/Library/Preferences/app.letteropener.softwareupdate.plist",
  ]
end
