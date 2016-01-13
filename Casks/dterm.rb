cask 'dterm' do
  version '1.6.0_5201'
  sha256 '34292f3450567f2964288998b3fdda0f85f49a36845457c46a74974e41c234ac'

  url "http://files.decimus.net/DTerm/#{version.sub(%r{.*_}, '')}-#{version.sub(%r{_.*}, '')}-DTerm.zip"
  appcast 'https://decimus.net/appcasts/DTerm.xml',
          :sha256 => 'a8f96b4a9a9b8f72a700c02f4e9d04b94b3c6825c7d488d258ba30ec384b4d5f'
  name 'DTerm'
  homepage 'https://decimus.net/DTerm'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  accessibility_access true

  app 'DTerm.app'
end
