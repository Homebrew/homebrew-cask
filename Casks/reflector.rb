cask :v1 => 'reflector' do
  version '2.2.1'
  sha256 'c31e236a91ee3ba5c68d354e2db29ba6a97d91d4240e2ff12d7f884293df42dd'

  url "http://download.airsquirrels.com/Reflector2/Mac/Reflector-#{version}.dmg"
  appcast 'https://updates.airsquirrels.com/Reflector2/Mac/Reflector2.xml'
  name 'Reflector 2'
  homepage 'http://www.airsquirrels.com/reflector/'
  license :commercial

  depends_on :macos => '>= :mountain_lion'

  app 'Reflector 2.app'
end
