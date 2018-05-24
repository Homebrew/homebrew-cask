cask 'manager' do
  version '18.5.22'
  sha256 'aca296b244cb87dfc455a4c5bdfa0afd732972afcaf94852ef8619c0c4a9fd8b'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
