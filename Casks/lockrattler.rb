cask "lockrattler" do
  version "4.28,2020.11"
  sha256 "edaac8c8142346d798df573df7dc5eaba5c11b509c5fb21ad4805266b36b7035"

  # eclecticlightdotcom.files.wordpress.com/ was verified as official when first introduced to the cask
  url "https://eclecticlightdotcom.files.wordpress.com/#{version.after_comma.major}/#{version.after_comma.minor}/lockrattler#{version.before_comma.no_dots}.zip"
  appcast "https://www.macupdater.net/cgi-bin/extract_text/extract_text_split_easy.cgi?url=https://raw.githubusercontent.com/hoakleyelc/updates/master/eclecticapps.plist&splitter_1=LockRattler&index_1=1&splitter_2=Version&index_2=1&splitter_3=dict&index_3=0"
  name "Lock Rattler"
  desc "Checks security systems and reports issues"
  homepage "https://eclecticlight.co/"

  depends_on macos: ">= :el_capitan"

  app "lockrattler#{version.before_comma.major}#{version.before_comma.minor}/LockRattler.app"

  zap trash: [
    "~/Library/Caches/co.eclecticlight.LockRattler",
    "~/Library/Preferences/co.eclecticlight.LockRattler.plist",
    "~/Library/Saved Application State/co.eclecticlight.LockRattler.savedState",
  ]
end
