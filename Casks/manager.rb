cask 'manager' do
  version '18.5.34'
  sha256 '5e12e5304ec9ec79f62032f27a3d9abc8c3f3f08c2982c375e36bdabb7ff73f0'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
