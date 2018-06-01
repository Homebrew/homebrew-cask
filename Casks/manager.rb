cask 'manager' do
  version '18.5.36'
  sha256 'feaa50ef423b0f78e3dda1121a9f2baca61adeae4d1760b826d9784fb5d5c65c'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
