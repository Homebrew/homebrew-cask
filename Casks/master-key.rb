cask 'master-key' do
  version '5.6.4.3.611'
  sha256 'cfae689409eb520ef59c64a5bbe9ee321ea04d4485670cc723eb77b8b1c80dc5'

  url 'https://macinmind.com/MasterKey.dmg'
  appcast 'https://macinmind.com/pads/MasterKeyappcast.xml',
          checkpoint: '469c8d0959f0344590ca3212e8a96563e8fd9b2bc83dd68ab922f99c26076aec'
  name 'Master Key'
  homepage 'https://macinmind.com/?area=app&app=masterkey&pg=info'

  app 'Master Key.app'
end
