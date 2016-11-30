cask 'postage' do
  version '3.1.0'
  sha256 'c717a7e73ac5f0cdb7d5fe7be8282921bae2abb35bd9ea9e1231cca1b300d5cb'

  # github.com/workflowproducts/postage was verified as official when first introduced to the cask
  url "https://github.com/workflowproducts/postage/releases/download/eV#{version}/Postage-#{version}.dmg"
  appcast 'https://github.com/workflowproducts/postage/releases.atom',
          checkpoint: '544ff1a14f4daba819e0860350be35e137ec8041a7ed4262b8d986e409971399'
  name 'Postage'
  homepage 'https://www.workflowproducts.com/postage.html'

  app 'Postage.app'
end
