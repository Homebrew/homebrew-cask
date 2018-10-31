cask 'manager' do
  version '18.10.91'
  sha256 'c3671f63f623b45c77e51aedc346d51fcb9bf7ce8080ac9a32b6f299dbaa25cb'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
