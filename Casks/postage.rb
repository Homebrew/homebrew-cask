cask 'postage' do
  version '3.1.1'
  sha256 '10016205ab23965dc1576efdfb2c720d09bffbd9b08ff2b88ad44d1da594f01e'

  # github.com/workflowproducts/postage was verified as official when first introduced to the cask
  url "https://github.com/workflowproducts/postage/releases/download/eV#{version}/Postage-#{version}.dmg"
  appcast 'https://github.com/workflowproducts/postage/releases.atom',
          checkpoint: '3b1b4748d9a528e0abfdfcc8675d1f32cc0fc774012300002f1efc5d524ed3e1'
  name 'Postage'
  homepage 'https://www.workflowproducts.com/postage.html'

  app 'Postage.app'
end
