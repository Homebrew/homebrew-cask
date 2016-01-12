cask 'slingshot' do
  version :latest
  sha256 :no_check

  url 'https://download.airsquirrels.com/Slingshot/Mac/Slingshot.dmg'
  appcast 'https://updates.airsquirrels.com/Slingshot/Mac/Slingshot.xml',
          :sha256 => 'f6774bd6be0fa4d04d1432138783d200ef55a4b630e8f8b98192d15503b6fc2f'
  name 'Slingshot'
  homepage 'http://www.airsquirrels.com/slingshot/'
  license :commercial

  app 'Slingshot.app'
end
