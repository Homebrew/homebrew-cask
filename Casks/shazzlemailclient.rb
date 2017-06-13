cask 'shazzlemailclient' do
  version '2.8.0'
  sha256 'd3d9d5307f75d2ea785143696b24e6c9a8d258b9ac40e813c1085f6c8048b4cd'

  url "https://shazzlemail.com/files/client/mac/ShazzleMailClient-#{version}.dmg"
  name 'ShazzleMail Client'
  homepage 'https://shazzlemail.com/'

  app 'ShazzleMailClient.app'
end
