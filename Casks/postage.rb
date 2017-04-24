cask 'postage' do
  version '3.2.6'
  sha256 '89e81c9b89d4227fc665d9726c58b5e007cb3d8abe5547f96a85a8d900f3d9fb'

  # github.com/workflowproducts/postage was verified as official when first introduced to the cask
  url "https://github.com/workflowproducts/postage/releases/download/eV#{version}/Postage-#{version}.dmg"
  appcast 'https://github.com/workflowproducts/postage/releases.atom',
          checkpoint: 'dfe95068750c40183306fc3046f906e78ea83bb0cfa7220415268099afbf7a2b'
  name 'Postage'
  homepage 'https://www.workflowproducts.com/postage.html'

  app 'Postage.app'
end
