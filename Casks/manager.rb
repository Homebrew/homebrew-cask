cask 'manager' do
  version '19.1.28'
  sha256 'f8595ac1734a989a47de4228882fb0458706eec9cd50399bf822efbe53fddcb1'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
