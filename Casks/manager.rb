cask 'manager' do
  version '18.11.37'
  sha256 '63b020a749171a2b6d1078e82e9f6296c727ee5f8a30fcabc39e2916aeaea8be'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
