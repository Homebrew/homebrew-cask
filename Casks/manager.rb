cask 'manager' do
  version :latest
  sha256 :no_check

  # mngr.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://mngr.s3.amazonaws.com/Manager.dmg'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
