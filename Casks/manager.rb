cask 'manager' do
  version '18.7.21'
  sha256 'b7c0d938be5424ea5d79aa1980e990163d750b6858a3fb151e7da5942213409f'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
