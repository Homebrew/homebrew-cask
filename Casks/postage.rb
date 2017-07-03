cask 'postage' do
  version '3.2.15'
  sha256 'de36ba3d4eb97dac51d0ca8181ced8d022111f640f409ab5b0b84847653b5352'

  # github.com/workflowproducts/postage was verified as official when first introduced to the cask
  url "https://github.com/workflowproducts/postage/releases/download/eV#{version}/Postage-#{version}.dmg"
  appcast 'https://github.com/workflowproducts/postage/releases.atom',
          checkpoint: 'de36ba3d4eb97dac51d0ca8181ced8d022111f640f409ab5b0b84847653b5352'
  name 'Postage'
  homepage 'https://www.workflowproducts.com/postage.html'

  app 'Postage.app'
end
