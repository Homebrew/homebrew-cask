cask :v1 => 'cloak' do
  version '2.0.14'
  sha256 'fb954b062fb90474eb3a845a6ce1a056f20893a7308d8a267f9405f806291629'

  url "https://static.getcloak.com/downloads/osx/updates/Release/Cloak-#{version}.dmg"
  appcast 'https://www.getcloak.com/updates/osx/public/',
          :sha256 => '9188560a42923aa393c1a9795fb7ecb252c50b63f363222022b2f972da68aa9e'
  name 'Cloak'
  homepage 'https://www.getcloak.com'
  license :gratis

  app 'Cloak.app'
end
