cask 'manager' do
  version '18.7.2'
  sha256 'c301b327a3d42c177e45c4ccfafc6de669db7f2ceb0a61f0f6b0dc25f8dc20b5'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
