cask 'coyim' do
  version '0.3.11'
  sha256 'ecb0eac42d2871fcb673bd89013490519e48b1afca76076353da3577162d6f5f'

  # dl.bintray.com/coyim/coyim-bin was verified as official when first introduced to the cask
  url "https://dl.bintray.com/coyim/coyim-bin/v#{version}/mac-bundle/coyim.dmg"
  appcast 'https://github.com/coyim/coyim/releases.atom'
  name 'CoyIM'
  homepage 'https://coy.im/'

  app 'CoyIM.app'
end
