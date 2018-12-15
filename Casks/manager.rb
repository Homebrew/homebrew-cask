cask 'manager' do
  version '18.12.1'
  sha256 'ea445d1987724dbac58adaaeaed0cf63e140cd2065a8517fac13977dc28b26cc'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
