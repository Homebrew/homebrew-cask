cask 'manager' do
  version '18.9.42'
  sha256 'aa202f118c6e394ebd6b50ac5cc4f7dbdba19da0843df686f97c45998feed531'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
