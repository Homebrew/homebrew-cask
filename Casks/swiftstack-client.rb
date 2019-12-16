cask 'swiftstack-client' do
  version '1.23.11'
  sha256 '6716333bb3d0f6fddc12454e30d6be9721fe8b340b725cd01b38b5b88d57fd2b'

  # storage.googleapis.com/swiftstack was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/swiftstack/swiftstackclient-#{version}.dmg"
  appcast 'https://storage.googleapis.com/swiftstack/swiftstackclient_macosx-x86_64_latest.html'
  name 'Swift Stack GUI Client'
  homepage 'https://www.swiftstack.com/'

  app 'SwiftStack Client.app'
end
