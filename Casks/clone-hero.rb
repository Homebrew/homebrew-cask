cask 'clone-hero' do
  version '0.22.5'
  sha256 '2c2c4eaee17ff574e2b0f5349c34465950977fadada39ac378d370da6fb5b754'

  url "http://dl.clonehero.net/clonehero-v.#{version.minor_patch}/clonehero-mac.dmg"
  name 'Clone Hero'
  homepage 'https://clonehero.net/'

  app 'Clone Hero.app'

  zap trash: [
               '~/Library/Application Support/com.srylain.CloneHero',
               '~/Library/Preferences/com.srylain.CloneHero.plist',
             ]
end
