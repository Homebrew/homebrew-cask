cask 'postage' do
  version '3.2.18'
  sha256 '001b40f7d96f84630cc2e2c410cbc340239473272abb5f30273360fd0c2cc999'

  # github.com/workflowproducts/postage was verified as official when first introduced to the cask
  url "https://github.com/workflowproducts/postage/releases/download/eV#{version}/Postage-#{version}.dmg"
  appcast 'https://github.com/workflowproducts/postage/releases.atom',
          checkpoint: 'a5b95c9a13943cf10b196f3b11a0fd6e4052cf287971b0cef0cf316c53a5d2ef'
  name 'Postage'
  homepage 'https://www.workflowproducts.com/postage.html'

  app 'Postage.app'
end
