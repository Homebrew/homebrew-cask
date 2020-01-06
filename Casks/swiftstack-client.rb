cask 'swiftstack-client' do
  version '1.23.12'
  sha256 '0afa4780a3253431352922065d0593b04ee46af643b38461dd752d877b4434ec'

  # storage.googleapis.com/swiftstack was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/swiftstack/swiftstackclient-#{version}.dmg"
  appcast 'https://storage.googleapis.com/swiftstack/swiftstackclient_macosx-x86_64_latest.html'
  name 'Swift Stack GUI Client'
  homepage 'https://www.swiftstack.com/'

  app 'SwiftStack Client.app'
end
