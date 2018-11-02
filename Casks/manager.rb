cask 'manager' do
  version '18.10.97'
  sha256 'bb6849fee87ae4c1ff432ae19beec13feb37acb59554e0649f3fac4ce298ec31'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
