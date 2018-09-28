cask 'manager' do
  version '18.10.7'
  sha256 '69dbfd10bb66b5a846318f0590a47c73fe957aad7d73e1db425b05f25778445e'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
