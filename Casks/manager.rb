cask 'manager' do
  version '18.7.88'
  sha256 'fc673d63ebd5a0f8e073250171ae7784cb6e24477bebbd2214c63f8593827710'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
