cask 'ideskcal' do
  version '2.6.5'
  sha256 'b42acab35ad8d3e1ffa7bb95adde768515d5a924b18b4768d70c0442e6477285'

  url "https://hashbangind.com/files/iDeskCal-#{version}.zip"
  appcast 'https://hashbangind.com/appcasts/iDeskCal-profileInfo.php',
          checkpoint: '203f64ba8886d86e9892388637f24359363c1bf540f856a3a7ef1f9398c107c6'
  name 'iDeskCal'
  homepage 'http://www.hashbangind.com'
  license :commercial

  app 'iDeskCal.app'
end
