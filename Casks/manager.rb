cask 'manager' do
  version '18.11.58'
  sha256 '05e693c4f494cb70abbbaacf87df53c1dc4b013f96dbaf6e558c84331d638daf'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
