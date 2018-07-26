cask 'manager' do
  version '18.7.49'
  sha256 '82d291e80d4ff761d904fadf9e7c08ca75ea16e9e5fedf8bd7c5e0a7877d5d60'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
