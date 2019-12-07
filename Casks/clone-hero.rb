cask 'clone-hero' do
  version '0.23.2'
  sha256 '89ec8ccded856e8a59c638dd5fe0b357667325b187f12dac4fd0b529995d78a0'

  url "http://dl.clonehero.net/clonehero-v.#{version.minor_patch}/clonehero-mac.dmg"
  name 'Clone Hero'
  homepage 'https://clonehero.net/'

  app 'Clone Hero.app'

  zap trash: [
               '~/Library/Application Support/com.srylain.CloneHero',
               '~/Library/Preferences/com.srylain.CloneHero.plist',
             ]
end
