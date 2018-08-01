cask 'lbry' do
  version '0.23.1'
  sha256 '868f72972cc9e951372f34c75d1a3cadd0766faf33f87a34c562aac0f6712061'

  # github.com/lbryio/lbry-app was verified as official when first introduced to the cask
  url "https://github.com/lbryio/lbry-app/releases/download/v#{version}/LBRY_#{version}.dmg"
  appcast 'https://github.com/lbryio/lbry-app/releases.atom'
  name 'LBRY'
  homepage 'https://lbry.io/'

  app 'LBRY.app'
end
