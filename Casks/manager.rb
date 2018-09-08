cask 'manager' do
  version '18.9.26'
  sha256 'cef7257f15d2a2f8a3ee049d9392096bd7f5336ce17dd907d9807eafa5068a3e'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
