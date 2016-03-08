cask 'mnemosyne' do
  version '2.3.5'
  sha256 '88c593fd7cdf2ceb42bf1af9977765b7a233a42185181ae873b960cf644211b7'

  # sourceforge.net/project/mnemosyne-proj was verified as official when first introduced to the cask
  url "http://downloads.sourceforge.net/project/mnemosyne-proj/mnemosyne/mnemosyne-#{version}/Mnemosyne-#{version}.dmg"
  appcast 'http://sourceforge.net/p/mnemosyne-proj/activity/feed?source=project_activity',
          checkpoint: 'a8f3a1d3ec76cfbc00c91c8957abb728e742e61860bc694c355421e3f8f0d8bc'
  name 'Mnemosyne'
  homepage 'http://mnemosyne-proj.org/'
  license :gpl

  app 'Mnemosyne.app'
end
