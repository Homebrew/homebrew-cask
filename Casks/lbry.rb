cask 'lbry' do
  version '0.43.4'
  sha256 '55bccf85780ac40db7bc9a1f7f0770bc0ce94810af4d3721ea26c7c8940b1a8e'

  # github.com/lbryio/lbry-desktop was verified as official when first introduced to the cask
  url "https://github.com/lbryio/lbry-desktop/releases/download/v#{version}/LBRY_#{version}.dmg"
  appcast 'https://github.com/lbryio/lbry-desktop/releases.atom'
  name 'LBRY'
  homepage 'https://lbry.com/'

  app 'LBRY.app'
end
