cask 'manager' do
  version '18.5.18'
  sha256 '67dd1f3bdc56d7b65d7876d4e44f78f201d49cd7719ca5227c1b0398782173c0'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
