cask 'postage' do
  version '3.2.12'
  sha256 'c507f5073655a07d4c71ceff07053f87506a0661385c6354d532701e2069dcd3'

  # github.com/workflowproducts/postage was verified as official when first introduced to the cask
  url "https://github.com/workflowproducts/postage/releases/download/eV#{version}/Postage-#{version}.dmg"
  appcast 'https://github.com/workflowproducts/postage/releases.atom',
          checkpoint: '7f69cde0a7468ba95d7c24117010d6f15fc3d243868998a8b5228ddab12b2dc7'
  name 'Postage'
  homepage 'https://www.workflowproducts.com/postage.html'

  app 'Postage.app'
end
