cask "noxappplayer" do
  version "3.8.1.0,20201014:0ea933d044244d13ab6472611973b163"
  sha256 "b0ae0e2a42918d35b4664dc0b8e7e2d2ce502f31958888915c4fc6795db165bd"

  url "https://res06.bignox.com/full/#{version.after_comma.before_colon}/#{version.after_colon}.dmg?filename=NoxInstaller_#{version.before_comma}_en.dmg"
  appcast "https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect_curl.cgi?url=https://www.bignox.com/en/download/fullPackage/mac_fullzip"
  name "NoxAppPlayer"
  desc "Android emulator to play mobile games"
  homepage "https://www.bignox.com/"

  container nested: "NoxAppPlayerInstaller.app/Contents/MacOS/NoxAppPlayer.zip"

  app "NoxAppPlayer.app"
end
