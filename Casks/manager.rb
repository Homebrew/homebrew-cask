cask 'manager' do
  version '18.8.54'
  sha256 'd02e60eaddc18920ee440ccab9a1e58879eff67ab7a1999e5e04307e0d220c29'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
