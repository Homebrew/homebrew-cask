cask "evernote" do
  if MacOS.version <= :yosemite
    version "6.12.3_455520"
    sha256 "fdda9701f1d8ff56a5e8bcadcf5b04dba66ad7e08511700de4675d20fda2bc71"
  
    url "https://cdn1.evernote.com/mac-smd/public/Evernote_RELEASE_#{version}.dmg"
  elsif MacOS.version <= :el_capitan
    version "7.2.3_456885"
    sha256 "eb9a92d57ceb54570c009e37fa7657a0fa3ab927a445eef382487a3fdde6bb97"

    url "https://cdn1.evernote.com/mac-smd/public/Evernote_RELEASE_#{version}.dmg"
  elif MacOS.version <= :high_sierra
    version "7.14_458244"
    sha256 "1049a40b8497c0e37d7fed8828552dba89fa52c826134e05b0d56e431e5033ad"
    
    url "https://cdn1.evernote.com/mac-smd/public/Evernote_RELEASE_#{version}.dmg"
  else
    version "10.0.10-1838"
    sha256 "6d2ff7e0d9ca322d45a734394fb2fa998e451fd1a7829b2d03f3d33aaa6cd302"    
    
    url "https://cdn1.evernote.com/boron/mac/builds/Evernote-#{version}.dmg"    
  end

  appcast "https://evernote.s3.amazonaws.com/boron/mac/public/latest-mac.yml"
  name "Evernote"
  desc "App for note taking, organizing, task lists, and archiving"
  homepage "https://evernote.com/"

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
