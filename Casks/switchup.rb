cask :v1 => 'switchup' do
  version '1.7'
  sha256 'e35b6cbd212b501e615fa2c678c65d9539cbb72f9d913ccd9748d9a645527ebe'

  url "https://www.irradiatedsoftware.com/downloads/SwitchUp_#{version}.zip"
  appcast 'https://www.irradiatedsoftware.com/updates/profiles/switchup.php',
          :sha256 => '0d20321633384c6d1c15cb7f4b4f7e67242981d84ebd4dc971429cc46f76c43d'
  name 'SwitchUp'
  homepage 'https://www.irradiatedsoftware.com/switchup/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'SwitchUp.app'
end
