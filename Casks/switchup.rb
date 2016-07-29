cask 'switchup' do
  version '1.7'
  sha256 '69d6b40162c9b033cbec21264322900555abcc25c2a78716de4d17439dfdb2d4'

  url "https://www.irradiatedsoftware.com/downloads/SwitchUp_#{version}.zip"
  appcast 'https://www.irradiatedsoftware.com/updates/profiles/switchup.php',
          checkpoint: '49a7d7939bd6087c8a3a11307f3cfd9095b5086e8065f575501a48982ed2b925'
  name 'SwitchUp'
  homepage 'https://www.irradiatedsoftware.com/switchup/'
  license :commercial

  app 'SwitchUp.app'
end
