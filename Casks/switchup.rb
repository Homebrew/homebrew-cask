cask 'switchup' do
  version '1.7'
  sha256 '69d6b40162c9b033cbec21264322900555abcc25c2a78716de4d17439dfdb2d4'

  url "https://www.irradiatedsoftware.com/downloads/SwitchUp_#{version}.zip"
  appcast 'https://www.irradiatedsoftware.com/updates/profiles/switchup.php',
          :sha256 => 'bdb7014f82e4ee553274a9b65604f6ed5d8a8cde345b1bcd1d8337183e3641c9'
  name 'SwitchUp'
  homepage 'https://www.irradiatedsoftware.com/switchup/'
  license :commercial

  app 'SwitchUp.app'
end
