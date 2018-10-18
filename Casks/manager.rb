cask 'manager' do
  version '18.10.74'
  sha256 'b256fbef4e7bc50cfe85a746a0167bb0c10db228d22f3d07b88529b9064c51a5'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
