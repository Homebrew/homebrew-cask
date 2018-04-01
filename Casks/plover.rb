cask 'plover' do
  version '3.1.1'
  sha256 'c45c1c6cf797de62923d20e6e46aec0d946027b6b3cca4df2fc2db4e3183516b'

  # github.com/openstenoproject/plover was verified as official when first introduced to the cask
  url "https://github.com/openstenoproject/plover/releases/download/v#{version}/plover-#{version}-py2-mac.dmg"
  appcast 'https://github.com/openstenoproject/plover/releases.atom',
          checkpoint: '10f8eec2e12c94b13ad64d5f348efaa7cf181c1de24f812cc2fb965dbbf08258'
  name 'Plover'
  homepage 'https://stenoknight.com/wiki/Main_Page'

  accessibility_access true

  app 'Plover.app'

  zap trash: '~/Library/Application Support/plover/'
end
