cask 'clone-hero' do
  version '0.21.6'
  sha256 'f3db00f2aca748b3a81118451550a93db71980b5876bfdf1af0fde3f08cc0f95'

  url do
    require 'open-uri'
    URI('https://clonehero.net/download').open.read.scan(%r{href="([^"]+.dmg.*)"}).flatten.first
  end
  name 'Clone Hero'
  homepage 'https://clonehero.net/'

  app 'Clone hero.app'

  zap trash: [
               '~/Library/Application\ Support/com.srylain.CloneHero',
               '~/Library/Preferences/com.srylain.CloneHero.plist',
             ]
end
