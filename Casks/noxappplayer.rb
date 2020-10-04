cask "noxappplayer" do
  version "3.8.0.0,20200910:c4fc37cebc6c4b95a365ecb56972a439"
  sha256 "da26a38c66b0ad5e79c09bdcdb9e981a08c6ba775469d53fec7148ec40843252"

  url "https://res06.bignox.com/full/#{version.after_comma.before_colon}/#{version.after_colon}.dmg?filename=NoxInstaller_#{version.before_comma}_en.dmg"
  appcast "https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect_curl.cgi?url=https://www.bignox.com/en/download/fullPackage/mac_fullzip"
  name "NoxAppPlayer"
  desc "Android emulator to play mobile games"
  homepage "https://www.bignox.com/"

  container nested: "NoxAppPlayerInstaller.app/Contents/MacOS/NoxAppPlayer.zip"

  app "NoxAppPlayer.app"
end
