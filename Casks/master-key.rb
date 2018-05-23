cask 'master-key' do
  version '5.6.5.3.612'
  sha256 'cfae689409eb520ef59c64a5bbe9ee321ea04d4485670cc723eb77b8b1c80dc5'

  url 'https://macinmind.com/MasterKey.dmg'
  appcast 'https://macinmind.com/pads/MasterKeyappcast.xml',
          checkpoint: 'd3a3d167853a10e608842dd51c9820fcc78394244e1140bc2771014dcc59bbdf'
  name 'Master Key'
  homepage 'https://macinmind.com/?area=app&app=masterkey&pg=info'

  app 'Master Key.app'
end
