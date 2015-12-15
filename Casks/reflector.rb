cask :v1 => 'reflector' do
  version '2.3.1'
  sha256 'e780b023343029eb7ccda2667b4da7d2c8f7f894419796a180c41e1056a53942'

  url "http://download.airsquirrels.com/Reflector2/Mac/Reflector-#{version}.dmg"
  appcast 'https://updates.airsquirrels.com/Reflector2/Mac/Reflector2.xml'
  name 'Reflector 2'
  homepage 'http://www.airsquirrels.com/reflector/'
  license :commercial

  depends_on :macos => '>= :mountain_lion'

  app 'Reflector 2.app'
end
