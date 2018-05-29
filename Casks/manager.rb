cask 'manager' do
  version '18.5.33'
  sha256 'e992cc9f2f1dc4390470fa97b2adbd7d8e8098d531700ebf8130b5ea43fee320'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
