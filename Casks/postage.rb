cask 'postage' do
  version '3.1.2'
  sha256 '991e666fe392030ebc2e3d82e910e7dc92f8e3cc486c80a7696dbb24dfe287a5'

  # github.com/workflowproducts/postage was verified as official when first introduced to the cask
  url "https://github.com/workflowproducts/postage/releases/download/eV#{version}/Postage-#{version}.dmg"
  appcast 'https://github.com/workflowproducts/postage/releases.atom',
          checkpoint: '0ef1dcb321c9b3e5c3ff4aa87430b02d27a3808645d99945affff9bbd5c47e7b'
  name 'Postage'
  homepage 'https://www.workflowproducts.com/postage.html'

  app 'Postage.app'
end
