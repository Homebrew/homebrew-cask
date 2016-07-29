cask 'mnemosyne' do
  version '2.3.5'
  sha256 '88c593fd7cdf2ceb42bf1af9977765b7a233a42185181ae873b960cf644211b7'

  # sourceforge.net/project/mnemosyne-proj was verified as official when first introduced to the cask
  url "http://downloads.sourceforge.net/project/mnemosyne-proj/mnemosyne/mnemosyne-#{version}/Mnemosyne-#{version}.dmg"
  appcast 'http://sourceforge.net/p/mnemosyne-proj/activity/feed?source=project_activity',
          checkpoint: '6dde6afd7066743b7d40e0e0a57f21df12bbcf67a95f24b25fb2271f5c4a48dc'
  name 'Mnemosyne'
  homepage 'http://mnemosyne-proj.org/'
  license :gpl

  app 'Mnemosyne.app'
end
