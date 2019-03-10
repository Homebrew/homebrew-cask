cask 'coyim' do
  version '0.3.10'
  sha256 '6623eb9f86ae44006a312de23537910558fe5c283e0b603daef24a38d577c325'

  # dl.bintray.com/coyim/coyim-bin was verified as official when first introduced to the cask
  url "https://dl.bintray.com/coyim/coyim-bin/v#{version}/mac-bundle/coyim.dmg"
  appcast 'https://github.com/coyim/coyim/releases.atom'
  name 'CoyIM'
  homepage 'https://coy.im/'

  app 'CoyIM.app'
end
