cask 'postage' do
  version '3.2.15'
  sha256 'acc41d713a645db0b38d1b0b5fbe59b575f965cb9faa18ea144bac9d64d19674'

  # github.com/workflowproducts/postage was verified as official when first introduced to the cask
  url "https://github.com/workflowproducts/postage/releases/download/eV#{version}/Postage-#{version}.dmg"
  appcast 'https://github.com/workflowproducts/postage/releases.atom',
          checkpoint: 'de36ba3d4eb97dac51d0ca8181ced8d022111f640f409ab5b0b84847653b5352'
  name 'Postage'
  homepage 'https://www.workflowproducts.com/postage.html'

  app 'Postage.app'
end
