cask 'swiftstack-client' do
  version '1.23.8'
  sha256 '7cf2884737c602dad1a729f289c36c488e923dca70656224f1c79f7ff6857ea3'

  # storage.googleapis.com/swiftstack was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/swiftstack/swiftstackclient-#{version}.dmg"
  appcast 'https://storage.googleapis.com/swiftstack/swiftstackclient_macosx-x86_64_latest.html'
  name 'Swift Stack GUI Client'
  homepage 'https://www.swiftstack.com/'

  app 'SwiftStack Client.app'
end
