class Switchup < Cask
  version '1.6.3'
  sha256 'dd269749385090bec6bbf30e917b78f07cf0424c5e94c3602a41dbf7718597b3'

  url "http://www.irradiatedsoftware.com/downloads/SwitchUp_#{version}.zip"
  appcast 'http://www.irradiatedsoftware.com/updates/profiles/switchup.php'
  homepage 'http://www.irradiatedsoftware.com/switchup/'

  app 'SwitchUp.app'
end
