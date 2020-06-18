cask 'raven-reader' do
  version '0.8.1'
  sha256 '1e719727703a29eee7fa23bae27be85b6ac0f69b6090135aaef6c8e1addc7bfd'

  url "https://download.ravenreader.app/ravenreader/Raven%20Reader-#{version}-mac.zip"
  appcast 'https://download.ravenreader.app/ravenreader/latest-mac.yml'
  name 'Raven Reader'
  homepage 'https://ravenreader.app/'

  auto_updates true

  app 'Raven Reader.app'
end
