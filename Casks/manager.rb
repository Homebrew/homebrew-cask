cask 'manager' do
  version '18.7.78'
  sha256 '44c2da33866b8fad4e616f102686a210ccdd49b82a1fd8994e52ca90501f6cb5'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
