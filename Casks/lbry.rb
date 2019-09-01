cask 'lbry' do
  version '0.35.2'
  sha256 'be8283e79949b9a3abdbb18bb36c3e595a5295e347b8009b2efdad33639a6562'

  # github.com/lbryio/lbry-desktop was verified as official when first introduced to the cask
  url "https://github.com/lbryio/lbry-desktop/releases/download/v#{version}/LBRY_#{version}.dmg"
  appcast 'https://github.com/lbryio/lbry-desktop/releases.atom'
  name 'LBRY'
  homepage 'https://lbry.com/'

  app 'LBRY.app'
end
