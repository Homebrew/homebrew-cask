cask 'clone-hero' do
  version '0.22.4'
  sha256 'e7aae8ad2b62f47d02ef92fb94d8064980e88e77b9061f58a29acb23b2899438'

  url "http://dl.clonehero.net/clonehero-v.#{version.minor_patch}/clonehero-mac.dmg"
  name 'Clone Hero'
  homepage 'https://clonehero.net/'

  app 'Clone Hero.app'

  zap trash: [
               '~/Library/Application Support/com.srylain.CloneHero',
               '~/Library/Preferences/com.srylain.CloneHero.plist',
             ]
end
