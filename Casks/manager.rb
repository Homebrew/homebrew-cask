cask 'manager' do
  version '18.11.6'
  sha256 '5556f0ea7add3909a818b6c14f20a646b8f7cd880b985ab32648e2572a4c7fc3'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
