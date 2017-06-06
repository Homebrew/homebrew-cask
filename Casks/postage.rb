cask 'postage' do
  version '3.2.14'
  sha256 '4d644afc5181498cf4a0859f763fda0d0d89ad95e3a3ed21856d30580fc56c26'

  # github.com/workflowproducts/postage was verified as official when first introduced to the cask
  url "https://github.com/workflowproducts/postage/releases/download/eV#{version}/Postage-#{version}.dmg"
  appcast 'https://github.com/workflowproducts/postage/releases.atom',
          checkpoint: '136a805a46e7098a7ff6dcdae3b7d2e02464e5206693d15c450fc19531310915'
  name 'Postage'
  homepage 'https://www.workflowproducts.com/postage.html'

  app 'Postage.app'
end
