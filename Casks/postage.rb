cask 'postage' do
  version '3.2.4'
  sha256 '18e5cb40fbf965a70ffb208ac5eb53a103d84a6ed45d5e48b1951485bbfa1634'

  # github.com/workflowproducts/postage was verified as official when first introduced to the cask
  url "https://github.com/workflowproducts/postage/releases/download/eV#{version}/Postage-#{version}.dmg"
  appcast 'https://github.com/workflowproducts/postage/releases.atom',
          checkpoint: '7044df090cc2a1845326ae5c3df077d8cfdcab2d77fea4bb4be68886b984053b'
  name 'Postage'
  homepage 'https://www.workflowproducts.com/postage.html'

  app 'Postage.app'
end
