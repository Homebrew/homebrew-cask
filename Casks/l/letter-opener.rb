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
