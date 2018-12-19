cask 'slingshot' do
  version '1.1.0.2'
  sha256 '10769ae948844d7c56d51745b2c20ffa94988f6089152098f6f51381daba9044'

  url 'https://download.airsquirrels.com/Slingshot/Mac/Slingshot.dmg'
  appcast 'https://updates.airsquirrels.com/Slingshot/Mac/Slingshot.xml'
  name 'Slingshot'
  homepage 'http://www.airsquirrels.com/slingshot/'

  app 'Slingshot.app'
end
