cask 'slingshot' do
  version :latest
  sha256 :no_check

  url 'http://download.airsquirrels.com/Slingshot/Mac/Slingshot.dmg'
  appcast 'https://updates.airsquirrels.com/Slingshot/Mac/Slingshot.xml',
          :sha256 => '412888289e91de20b475819622788cf78414d6815c702f5beeb479b405a515ac'
  name 'Slingshot'
  homepage 'http://www.airsquirrels.com/slingshot/'
  license :commercial

  app 'Slingshot.app'
end
