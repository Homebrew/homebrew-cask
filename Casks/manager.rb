cask 'manager' do
  version '18.5.40'
  sha256 '8e7c0ba62e1584864e787267c4a3d404a66da879e4a374bc55645cae484a5f87'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
