cask 'manager' do
  version '18.5.24'
  sha256 '11cc2e9e34a7ca092314727b018c7ec4c9d8705e567b7c000a6413d107dad357'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
