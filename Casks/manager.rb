cask 'manager' do
  version '18.7.0'
  sha256 '468d0545032819fd6a2b49b02102918d5b1640ccf2ed877c9c66a1d7f15fb4b6'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
