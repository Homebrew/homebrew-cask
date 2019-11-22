cask 'swiftstack-client' do
  version '1.23.7'
  sha256 '0eb8d3f0e9bf27c7b3f77bc0a0cf085a399d413e0032f3abbd668338d7e7bbec'

  # storage.googleapis.com/swiftstack was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/swiftstack/swiftstackclient-#{version}.dmg"
  appcast 'https://storage.googleapis.com/swiftstack/swiftstackclient_macosx-x86_64_latest.html'
  name 'Swift Stack GUI Client'
  homepage 'https://www.swiftstack.com/'

  app 'SwiftStack Client.app'
end
