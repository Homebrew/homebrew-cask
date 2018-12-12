cask 'manager' do
  version '18.11.68'
  sha256 '2199680b45734ff3320af7d47a6c9a9ac9108be7e5496b7b3f8d0a29358df6d1'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
