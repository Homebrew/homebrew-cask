cask :v1 => 'dterm' do
  version '1.6.0_5201'
  sha256 '34292f3450567f2964288998b3fdda0f85f49a36845457c46a74974e41c234ac'

  url "http://files.decimus.net/DTerm/#{version.sub(%r{.*_},'')}-#{version.sub(%r{_.*},'')}-DTerm.zip"
  appcast 'https://decimus.net/appcasts/DTerm.xml'
  name 'DTerm'
  homepage 'https://decimus.net/DTerm'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'DTerm.app'

  accessibility_access true
end
