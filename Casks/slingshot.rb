cask 'slingshot' do
  version '1.1.0.2'
  sha256 '10769ae948844d7c56d51745b2c20ffa94988f6089152098f6f51381daba9044'

  url 'https://download.airsquirrels.com/Slingshot/Mac/Slingshot.dmg'
  appcast 'https://updates.airsquirrels.com/Slingshot/Mac/Slingshot.xml',
          checkpoint: 'd01e5c1777840a7dd1a87c16f640bcc12450d6ac46c3ac0bba4fdea959724ae8'
  name 'Slingshot'
  homepage 'https://www.airsquirrels.com/slingshot/'

  app 'Slingshot.app'
end
