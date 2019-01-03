cask 'pgmanage' do
  version '11.0.1'
  sha256 '962970308dde967bef65e39426055bc04077b0265587d40e7feae681109c517b'

  # github.com/pgManage/pgManage was verified as official when first introduced to the cask
  url "https://github.com/pgManage/pgManage/releases/download/v#{version}/pgManage-#{version}.dmg"
  appcast 'https://github.com/pgManage/pgManage/releases.atom'
  name 'pgManage'
  homepage 'https://www.workflowproducts.com/services.html#software'

  app 'pgManage.app'
end
