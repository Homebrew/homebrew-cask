cask 'manager' do
  version '18.12.26'
  sha256 '47ac3c569eb922e15f295b1d89af613139d4bddac4f7ca7ab98e6eb5f5fc3582'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
