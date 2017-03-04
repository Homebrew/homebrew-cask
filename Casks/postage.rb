cask 'postage' do
  version '3.1.3'
  sha256 'ad6713f5246ecc0612da2f0062821e8eee175f42381264ab4c84126c4e7517a7'

  # github.com/workflowproducts/postage was verified as official when first introduced to the cask
  url "https://github.com/workflowproducts/postage/releases/download/eV#{version}/Postage-#{version}.dmg"
  appcast 'https://github.com/workflowproducts/postage/releases.atom',
          checkpoint: 'c56474558f912d5a3eabfd68e2c72186f34efb746bd960e65b620ee3544be457'
  name 'Postage'
  homepage 'https://www.workflowproducts.com/postage.html'

  app 'Postage.app'
end
