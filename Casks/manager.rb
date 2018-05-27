cask 'manager' do
  version '18.5.26'
  sha256 '25305d8479575a6c920001c96439ab3e6ac0a85604b3ed524a00b8655828e4c7'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
