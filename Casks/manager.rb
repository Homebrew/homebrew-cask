cask 'manager' do
  version '18.11.54'
  sha256 'ee202e868a0fb4424de0252fddbec6ddc7a598ff583185835e131daa282ea138'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
