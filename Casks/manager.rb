cask 'manager' do
  version '18.5.65'
  sha256 '8fd531caa4c673dfd3aab37de7ea65368da3e36454d38de03531214587362e1a'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
