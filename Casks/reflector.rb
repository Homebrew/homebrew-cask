cask :v1 => 'reflector' do
  version '2.0.0'
  sha256 'd81982a321ef3ee96c4267963f1b7f729d2229d4ffe1f12d3886b96a5311bf3d'

  url "http://download.airsquirrels.com/Reflector2/Mac/Reflector-#{version}.dmg"
  appcast 'https://updates.airsquirrels.com/Reflector2/Mac/Reflector2.xml'
  name 'Reflector 2'
  homepage 'http://www.airsquirrels.com/reflector/'
  license :commercial

  depends_on :macos => '>= :mountain_lion'

  app 'Reflector 2.app'
end
