cask 'lbry' do
  version '0.45.1'
  sha256 'cc8b120c988767465cc93e5a19149d0a939da7100c8dccfa69698fa97e598895'

  # github.com/lbryio/lbry-desktop/ was verified as official when first introduced to the cask
  url "https://github.com/lbryio/lbry-desktop/releases/download/v#{version}/LBRY_#{version}.dmg"
  appcast 'https://github.com/lbryio/lbry-desktop/releases.atom'
  name 'LBRY'
  homepage 'https://lbry.com/'

  app 'LBRY.app'
end
