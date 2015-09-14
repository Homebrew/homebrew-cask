cask :v1 => 'reflector' do
  version '2.2.0'
  sha256 '2a35b89d7b5181c2a26c9f587b92e6ee9865facce869409aa81f471e2ae0d920'

  url "http://download.airsquirrels.com/Reflector2/Mac/Reflector-#{version}.dmg"
  appcast 'https://updates.airsquirrels.com/Reflector2/Mac/Reflector2.xml'
  name 'Reflector 2'
  homepage 'http://www.airsquirrels.com/reflector/'
  license :commercial

  depends_on :macos => '>= :mountain_lion'

  app 'Reflector 2.app'
end
