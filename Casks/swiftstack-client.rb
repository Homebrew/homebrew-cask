cask 'swiftstack-client' do
  version '1.21.13'
  sha256 '5532ffb0b0e0c13e9d9864a1e3ee6cd0d5a63debc3065f0e0c401d8712ade695'

  # storage.googleapis.com/swiftstack was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/swiftstack/swiftstackclient-#{version}.dmg"
  name 'Swift Stack GUI Client'
  homepage 'https://www.swiftstack.com/'

  app 'SwiftStack Client.app'
end
