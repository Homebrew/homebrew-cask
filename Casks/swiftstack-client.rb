cask 'swiftstack-client' do
  version '1.24.4'
  sha256 'adef7327a1101ef9eb3dc4ed891706bfc0ff94b6738cc19904f4b62be995ae94'

  # storage.googleapis.com/swiftstack was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/swiftstack/swiftstackclient-#{version}.dmg"
  appcast 'https://storage.googleapis.com/swiftstack/swiftstackclient_macosx-x86_64_latest.html'
  name 'Swift Stack GUI Client'
  homepage 'https://www.swiftstack.com/'

  app 'SwiftStack Client.app'
end
