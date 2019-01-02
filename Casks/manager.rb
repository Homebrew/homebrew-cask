cask 'manager' do
  version '18.12.19'
  sha256 '6226cb357a5bfa9cc44e06d69038a3b5aa48fd51b35dea01b516e3141a6d17c6'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
