cask :v1 => 'reflector' do
  version '2.3.0'
  sha256 '42de2e58a434848daf849ae5c5a392c564369bb49adfc5181981cbf3e1e822d4'

  url "http://download.airsquirrels.com/Reflector2/Mac/Reflector-#{version}.dmg"
  appcast 'https://updates.airsquirrels.com/Reflector2/Mac/Reflector2.xml'
  name 'Reflector 2'
  homepage 'http://www.airsquirrels.com/reflector/'
  license :commercial

  depends_on :macos => '>= :mountain_lion'

  app 'Reflector 2.app'
end
