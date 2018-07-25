cask 'manager' do
  version '18.7.48'
  sha256 'cb93fae7ae13aa031e9fab45d9b11dd61607fbce424a08744b1acf2216c5e7be'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
