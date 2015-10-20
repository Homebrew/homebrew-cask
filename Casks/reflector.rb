cask :v1 => 'reflector' do
  version '2.2.1'
  sha256 '5f5f5fa619939ece736f59b7fa581c24766dd2f4acac6ae37ae34d6df7f181f1'

  url "http://download.airsquirrels.com/Reflector2/Mac/Reflector-#{version}.dmg"
  appcast 'https://updates.airsquirrels.com/Reflector2/Mac/Reflector2.xml'
  name 'Reflector 2'
  homepage 'http://www.airsquirrels.com/reflector/'
  license :commercial

  depends_on :macos => '>= :mountain_lion'

  app 'Reflector 2.app'
end
