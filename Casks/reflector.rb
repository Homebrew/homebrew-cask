cask :v1 => 'reflector' do
  version '2.1.0.0'
  sha256 'eda358fec24270e823bd46441ab39e434a616752cd0d5f02456871ee1f870af9'

  url "http://download.airsquirrels.com/Reflector2/Mac/Reflector-#{version}.dmg"
  appcast 'https://updates.airsquirrels.com/Reflector2/Mac/Reflector2.xml'
  name 'Reflector 2'
  homepage 'http://www.airsquirrels.com/reflector/'
  license :commercial

  depends_on :macos => '>= :mountain_lion'

  app 'Reflector 2.app'
end
