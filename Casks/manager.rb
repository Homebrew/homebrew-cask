cask 'manager' do
  version '18.7.74'
  sha256 '624fa90c7cc4c75fdd1c2c128f27981b186a55aabf080b539510386abe5f0173'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
