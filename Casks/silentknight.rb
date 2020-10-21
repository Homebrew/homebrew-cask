cask "silentknight" do
  version "1.11,2020.10"
  sha256 "60edc7a1f298bc8e61419985e57f8676570e5f12f65f1b391b2ab8caba30934b"

  # eclecticlightdotcom.files.wordpress.com/ was verified as official when first introduced to the cask
  url "https://eclecticlightdotcom.files.wordpress.com/#{version.after_comma.major}/#{version.after_comma.minor}/silentknight#{version.before_comma.no_dots}.zip"
  appcast "https://www.macupdater.net/cgi-bin/extract_text/extract_text_split_easy.cgi?url=https://raw.githubusercontent.com/hoakleyelc/updates/master/eclecticapps.plist&splitter_1=SilentKnight&index_1=1&splitter_2=Version&index_2=1&splitter_3=dict&index_3=0"
  name "SilentKnight"
  desc "Automatically checks computer's security"
  homepage "https://eclecticlight.co/lockrattler-systhist/"

  depends_on macos: ">= :el_capitan"

  app "silentknight#{version.before_comma.no_dots}/SilentKnight.app"

  zap trash: [
    "~/Library/Caches/co.eclecticlight.SilentKnight",
    "~/Library/Preferences/co.eclecticlight.SilentKnight.plist",
    "~/Library/Saved Application State/co.eclecticlight.SilentKnight.savedState",
  ]
end
