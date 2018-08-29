cask 'manager' do
  version '18.8.80'
  sha256 '52521acc2294e833e4e296996f5b9aeead77d5f57e47b605a5b7c44b0eb65ddc'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
