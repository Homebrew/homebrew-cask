cask 'manager' do
  version '18.7.97'
  sha256 '9b9cad72d4edd984529ddc00e6572ec18bc056bcfdb9965264a0efe845e8adf9'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
