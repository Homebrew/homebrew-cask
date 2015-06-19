cask :v1 => 'reflector' do
  version '2.0.2'
  sha256 '0b18a11c2d364af563cadfdc27cf3f1bf783a55ad1361275ff2e6cbca12aa1dd'

  url "http://download.airsquirrels.com/Reflector2/Mac/Reflector-#{version}.dmg"
  appcast 'https://updates.airsquirrels.com/Reflector2/Mac/Reflector2.xml'
  name 'Reflector 2'
  homepage 'http://www.airsquirrels.com/reflector/'
  license :commercial

  depends_on :macos => '>= :mountain_lion'

  app 'Reflector 2.app'
end
