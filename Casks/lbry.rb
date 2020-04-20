cask 'lbry' do
  version '0.44.0'
  sha256 '362595f1addbed00c6dd9cae0ea4322de48f5d75b253b7da23c2185cf7c081ea'

  # github.com/lbryio/lbry-desktop/ was verified as official when first introduced to the cask
  url "https://github.com/lbryio/lbry-desktop/releases/download/v#{version}/LBRY_#{version}.dmg"
  appcast 'https://github.com/lbryio/lbry-desktop/releases.atom'
  name 'LBRY'
  homepage 'https://lbry.com/'

  app 'LBRY.app'
end
