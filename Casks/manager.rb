cask 'manager' do
  version '18.7.95'
  sha256 'b008ff88f45c860069944a3294c7e3aaac6364192884b3dd22766ccfc3419f48'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
