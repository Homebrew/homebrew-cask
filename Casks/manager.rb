cask 'manager' do
  version '19.1.10'
  sha256 '2b1d1a7c16158fe4de1d4a4c4e4c7cc12debf889a35d86757a222d6a5ae15f6a'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
