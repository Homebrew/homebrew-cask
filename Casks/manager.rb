cask 'manager' do
  version '18.7.80'
  sha256 'e6f9b33ea810f72dc58aabb7a3906523b17de1fbbc8407e92484d3f3228bff3e'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
