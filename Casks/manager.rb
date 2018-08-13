cask 'manager' do
  version '18.7.89'
  sha256 'b621b1d890d106dda23b9f718158d739568902e9039eb0c5971a9fac13a185ab'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
