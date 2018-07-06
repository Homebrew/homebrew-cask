cask 'switchup' do
  version '1.7'
  sha256 '69d6b40162c9b033cbec21264322900555abcc25c2a78716de4d17439dfdb2d4'

  url "https://www.irradiatedsoftware.com/downloads/SwitchUp_#{version}.zip"
  appcast 'https://www.irradiatedsoftware.com/updates/profiles/switchup.php'
  name 'SwitchUp'
  homepage 'https://www.irradiatedsoftware.com/switchup/'

  app 'SwitchUp.app'
end
