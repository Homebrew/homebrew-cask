cask 'postage' do
  version '3.2.16'
  sha256 '982d65c43ea3ad8484bbc513335bc0fe655813d8627df0af524be227385641c6'

  # github.com/workflowproducts/postage was verified as official when first introduced to the cask
  url "https://github.com/workflowproducts/postage/releases/download/eV#{version}/Postage-#{version}.dmg"
  appcast 'https://github.com/workflowproducts/postage/releases.atom',
          checkpoint: '97f98c7a4b42bc1d143bf40dfc8baa28872b599a2e8db732ec0606ed6c8732b5'
  name 'Postage'
  homepage 'https://www.workflowproducts.com/postage.html'

  app 'Postage.app'
end
