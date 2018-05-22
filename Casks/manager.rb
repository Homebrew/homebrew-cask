cask 'manager' do
  version '18.5.9'
  sha256 '24831d62c89871578f71d58a03523e550621eccb8d41a66675649fd25c1f478e'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
