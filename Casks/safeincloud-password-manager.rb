cask 'safeincloud-password-manager' do
  version :latest
  sha256 :no_check

  url 'https://www.safe-in-cloud.com/download/SafeInCloud.dmg'
  name 'SafeInCloud Password Manager'
  homepage 'https://www.safe-in-cloud.com'

  app 'SafeInCloud Password Manager.app'
end
