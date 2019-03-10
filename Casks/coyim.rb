cask 'coyim' do
  version '0.3.10'
  sha256 '6623eb9f86ae44006a312de23537910558fe5c283e0b603daef24a38d577c325'

  # bintray.com/coyim/coyim-bin is the new official url as stated on the coyim website
  url "https://dl.bintray.com/coyim/coyim-bin/v#{version}/mac-bundle/coyim.dmg"
  name 'CoyIM'
  homepage 'https://coy.im/'

  app 'CoyIM.app'
end
