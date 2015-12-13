cask :v1 => 'shazzlemailclient' do
  version '2.0.0'
  sha256 '6891feff8bf6141f8d05ccffd1d033f164e9cc063dd714b6580fba65bcebf953'

  url "https://shazzlemail.com/files/client/mac/ShazzleMailClient-#{version}.dmg"
  name 'ShazzleMail Client'
  name 'ShazzleMail'
  homepage 'https://shazzlemail.com/'
  license :gratis

  app 'ShazzleMailClient.app'
end
