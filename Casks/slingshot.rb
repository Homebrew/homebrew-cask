cask 'slingshot' do
  version :latest
  sha256 :no_check

  url 'https://download.airsquirrels.com/Slingshot/Mac/Slingshot.dmg'
  appcast 'https://updates.airsquirrels.com/Slingshot/Mac/Slingshot.xml',
          :checkpoint => 'd01e5c1777840a7dd1a87c16f640bcc12450d6ac46c3ac0bba4fdea959724ae8'
  name 'Slingshot'
  homepage 'http://www.airsquirrels.com/slingshot/'
  license :commercial

  app 'Slingshot.app'
end
