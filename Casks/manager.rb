cask 'manager' do
  version '18.10.88'
  sha256 'f8ee398f509e9944d7da8d13b108db419173a94ddebbbc732598349270d19b0e'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
