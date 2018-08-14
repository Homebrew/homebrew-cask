cask 'pgmanage' do
  version '10.3.1'
  sha256 'd58c557c2e93424857915346f34467d9f2c43e781c35c0c179c619c122eccf44'

  # github.com/pgManage/pgManage was verified as official when first introduced to the cask
  url "https://github.com/pgManage/pgManage/releases/download/v#{version}/pgManage-#{version}.dmg"
  appcast 'https://github.com/pgManage/pgManage/releases.atom'
  name 'pgManage'
  homepage 'https://www.workflowproducts.com/services.html#software'

  app 'pgManage.app'
end
