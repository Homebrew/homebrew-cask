cask 'manager' do
  version '19.1.37'
  sha256 'f75d1ccd7204e9cfbdb99d21ca9a1ecdde58ff236e247715357f2e6f814de81e'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
