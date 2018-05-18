cask 'manager' do
  version '18.5.2'
  sha256 '7d1e8ec09d80413f0429a9fc64c5bfa9873e071648b78d42fda5cb77b14f4326'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
