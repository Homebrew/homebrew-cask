cask 'master-key' do
  version '5.6.4.3.611'
  sha256 'cfae689409eb520ef59c64a5bbe9ee321ea04d4485670cc723eb77b8b1c80dc5'

  url 'https://macinmind.com/MasterKey.dmg'
  appcast 'https://macinmind.com/pads/MasterKeyappcast.xml',
          checkpoint: '680e469511621b3f9dfb3976d6ef7c5518a322423fc1b4bf402945508660cf7d'
  name 'Master Key'
  homepage 'https://macinmind.com/?area=app&app=masterkey&pg=info'

  app 'Master Key.app'
end
