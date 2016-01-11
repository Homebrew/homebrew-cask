cask 'switchup' do
  version '1.7'
  sha256 '69d6b40162c9b033cbec21264322900555abcc25c2a78716de4d17439dfdb2d4'

  url "https://www.irradiatedsoftware.com/downloads/SwitchUp_#{version}.zip"
  appcast 'https://www.irradiatedsoftware.com/updates/profiles/switchup.php',
          :sha256 => '0d20321633384c6d1c15cb7f4b4f7e67242981d84ebd4dc971429cc46f76c43d'
  name 'SwitchUp'
  homepage 'https://www.irradiatedsoftware.com/switchup/'
  license :commercial

  app 'SwitchUp.app'
end
