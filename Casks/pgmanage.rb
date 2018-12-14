cask 'pgmanage' do
  version '11.0.0'
  sha256 'ff81f151389223d0e484414516de57722df08f17d182b73aeefdfd57feb78881'

  # github.com/pgManage/pgManage was verified as official when first introduced to the cask
  url "https://github.com/pgManage/pgManage/releases/download/v#{version}/pgManage-#{version}.dmg"
  appcast 'https://github.com/pgManage/pgManage/releases.atom'
  name 'pgManage'
  homepage 'https://www.workflowproducts.com/services.html#software'

  app 'pgManage.app'
end
