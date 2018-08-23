cask 'manager' do
  version '18.8.30'
  sha256 '222c66f7c0bf6bd8ec6f0707ae1f0759ef67eaa83f3db5941750b56922a5c3ab'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
