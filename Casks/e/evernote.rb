cask "evernote" do
  version "10.105.4,20240910164757,a2e60a8d876a07eded5d212fa56ba45214114ad0"
  sha256 "98d1f6d52718a0b05222b7cdce14a3755ece619edf0a1b8557af75afbfe2cd73"

  url "https://mac.desktop.evernote.com/builds/Evernote-#{version.csv.first}-mac-ddl-stage-#{version.csv.second}-#{version.csv.third}.dmg"
  name "Evernote"
  desc "App for note taking, organising, task lists, and archiving"
  homepage "https://evernote.com/"

  livecheck do
    url "https://updates.desktop.evernote.com/mac/public/latest-mac.yml"
    regex(/Evernote[._-]v?(\d+(?:\.\d+)+)-mac-ddl-stage-(\d+(?:\.\d+)*)-(\h+)\.dmg/i)
    strategy :electron_builder do |yaml, regex|
      yaml["files"]&.map do |file|
        match = file["url"]&.match(regex)
        next if match.blank?

        "#{match[1]},#{match[2]},#{match[3]}"
      end
    end
  end

  auto_updates true

  app "Evernote.app"

  uninstall quit: [
    "com.evernote.Evernote",
    "com.evernote.EvernoteHelper",
  ]

  zap trash: [
    "~/Library/Application Support/Caches/evernote-client-updater",
    "~/Library/Application Support/com.evernote.Evernote",
    "~/Library/Application Support/com.evernote.EvernoteHelper",
    "~/Library/Application Support/Evernote",
    "~/Library/Caches/com.evernote.Evernote",
    "~/Library/Cookies/com.evernote.Evernote.binarycookies",
    "~/Library/Logs/Evernote",
    "~/Library/Preferences/com.evernote.Evernote.plist",
    "~/Library/Preferences/com.evernote.EvernoteHelper.plist",
    "~/Library/Saved Application State/com.evernote.Evernote.savedState",
  ]
end
