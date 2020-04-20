cask 'swiftstack-client' do
  version '1.26.0'
  sha256 '736ded795ab06519fbadf2fac8b2c2defa6461cd5a223134e1cd9335a82a1beb'

  # storage.googleapis.com/swiftstack/ was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/swiftstack/swiftstackclient-#{version}.dmg"
  appcast 'https://storage.googleapis.com/swiftstack/swiftstackclient_macosx-x86_64_latest.html'
  name 'Swift Stack GUI Client'
  homepage 'https://www.swiftstack.com/'

  app 'SwiftStack Client.app'
end
