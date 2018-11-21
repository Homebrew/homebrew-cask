cask 'manager' do
  version '18.11.42'
  sha256 '8b361fbf789ca527ad1ec2830503afffc1a6144b3549fa825e213f4dc7e3fbc2'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
