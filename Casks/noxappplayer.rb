cask "noxappplayer" do
  version "3.8.5.1,20201127:6c7e32816b1449b494b980af6c0c3542"
  sha256 "148ab01bf7d94bedfa20b701e07a965ca02d2b7d9e60fb5879db64f0bdc79f02"

  url "https://res06.bignox.com/full/#{version.after_comma.before_colon}/#{version.after_colon}.dmg?filename=NoxInstaller_#{version.before_comma}_en.dmg"
  appcast "https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect_curl.cgi?url=https://www.bignox.com/en/download/fullPackage/mac_fullzip"
  name "NoxAppPlayer"
  desc "Android emulator to play mobile games"
  homepage "https://www.bignox.com/"

  container nested: "NoxAppPlayerInstaller.app/Contents/MacOS/NoxAppPlayer.zip"

  app "NoxAppPlayer.app"
end
