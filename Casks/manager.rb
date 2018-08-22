cask 'manager' do
  version '18.8.19'
  sha256 '81760d16b646b80ca89c989bfddde9f5fd455381cf3a9aba77d17f03357a3e9b'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
