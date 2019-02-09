cask 'manager' do
  version '19.1.38'
  sha256 '846a77c8c7f31802c84c19d86bbf7c6443389f8607da49f8bfc7903cc34d30a6'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
