cask 'manager' do
  version '18.11.9'
  sha256 '2440d031421eef5bdf9d8a6b8da5f5b0684eebc323c9c3f887dcd91b6e4d7623'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
