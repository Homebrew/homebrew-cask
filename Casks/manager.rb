cask 'manager' do
  version '18.5.3'
  sha256 '37e5a2bee628b95c5b3217a67d89eae95fcc8a79079da8d2a2f8550305ccede7'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
