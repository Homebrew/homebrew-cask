cask 'manager' do
  version '18.7.23'
  sha256 'dc56d743c6cab760a7c0ed4a0577115fe02191fa195696e2ba7b7657bf086c83'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
