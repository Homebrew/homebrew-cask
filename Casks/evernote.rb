cask "evernote" do
  if MacOS.version <= :yosemite
    version "6.12.3_455520"
    sha256 "fdda9701f1d8ff56a5e8bcadcf5b04dba66ad7e08511700de4675d20fda2bc71"

    url "https://cdn1.evernote.com/mac-smd/public/Evernote_RELEASE_#{version}.dmg"
  elsif MacOS.version <= :el_capitan
    version "7.2.3_456885"
    sha256 "eb9a92d57ceb54570c009e37fa7657a0fa3ab927a445eef382487a3fdde6bb97"

    url "https://cdn1.evernote.com/mac-smd/public/Evernote_RELEASE_#{version}.dmg"
  elsif MacOS.version <= :high_sierra
    version "7.14_458244"
    sha256 "1049a40b8497c0e37d7fed8828552dba89fa52c826134e05b0d56e431e5033ad"

    url "https://cdn1.evernote.com/mac-smd/public/Evernote_RELEASE_#{version}.dmg"
  else
    version "10.8.5,2367"
    sha256 "53f75b7c4f2812aa750654c8ee186d6aa52feb9fe314977d291e35a170ae2827"

    url "https://cdn1.evernote.com/boron/mac/builds/Evernote-#{version.before_comma}-mac-ddl-ga-#{version.after_comma}.dmg"
  end

  name "Evernote"
  desc "App for note taking, organizing, task lists, and archiving"
  homepage "https://evernote.com/"

  livecheck do
    url "https://evernote.s3.amazonaws.com/boron/mac/public/latest-mac.yml"
    strategy :page_match do |page|
      match = page.match(/(\d+(?:\.\d+)*)-mac-ddl-ga-(\d+)\.zip/)
      "#{match[1]},#{match[2]}"
    end
  end

  auto_updates true

  app "Evernote.app"

  uninstall quit: [
    "com.evernote.Evernote",
    "com.evernote.EvernoteHelper",
  ]

  zap trash: [
    "~/Library/Application Support/com.evernote.Evernote",
    "~/Library/Application Support/com.evernote.EvernoteHelper",
    "~/Library/Caches/com.evernote.Evernote",
    "~/Library/Preferences/com.evernote.Evernote.plist",
    "~/Library/Preferences/com.evernote.EvernoteHelper.plist",
  ]
end
