cask :v1 => 'slingshot' do
  version :latest
  sha256 :no_check

  url 'http://download.airsquirrels.com/Slingshot/Mac/Slingshot.dmg'
  appcast 'https://updates.airsquirrels.com/Slingshot/Mac/Slingshot.xml'
  homepage 'http://www.airsquirrels.com/slingshot/'
  license :unknown

  app 'Slingshot.app'
end
