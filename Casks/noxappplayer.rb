cask "noxappplayer" do
  version "3.8.5.0,20201113:05630baf34354e2f9c57162b8f3db659"
  sha256 "89fa366f804fdf4d82f79a7a15cf2a12dfda473acb330f846e5f50a1eedd5f13"

  url "https://res06.bignox.com/full/#{version.after_comma.before_colon}/#{version.after_colon}.dmg?filename=NoxInstaller_#{version.before_comma}_en.dmg"
  appcast "https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect_curl.cgi?url=https://www.bignox.com/en/download/fullPackage/mac_fullzip"
  name "NoxAppPlayer"
  desc "Android emulator to play mobile games"
  homepage "https://www.bignox.com/"

  container nested: "NoxAppPlayerInstaller.app/Contents/MacOS/NoxAppPlayer.zip"

  app "NoxAppPlayer.app"
end
