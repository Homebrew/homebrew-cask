cask 'manager' do
  version '18.7.16'
  sha256 '9e93e2b3763a580892f815e0cc00b9a8fb4dacd533f5cfe78d89a2a8891e1f7a'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
