cask :v1 => 'switchup' do
  version '1.6.3'
  sha256 'dd269749385090bec6bbf30e917b78f07cf0424c5e94c3602a41dbf7718597b3'

  url "http://www.irradiatedsoftware.com/downloads/SwitchUp_#{version}.zip"
  appcast 'http://www.irradiatedsoftware.com/updates/profiles/switchup.php',
          :sha256 => 'a9feeb5f7dcb832042ad2d8083844e6f26c0537628820870b27e1d8a8d5abb82'
  homepage 'http://www.irradiatedsoftware.com/switchup/'
  license :unknown

  app 'SwitchUp.app'
end
