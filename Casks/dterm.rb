cask 'dterm' do
  version '1.6.0_5201'
  sha256 '34292f3450567f2964288998b3fdda0f85f49a36845457c46a74974e41c234ac'

  url "http://files.decimus.net/DTerm/#{version.sub(%r{.*_}, '')}-#{version.sub(%r{_.*}, '')}-DTerm.zip"
  appcast 'https://decimus.net/appcasts/DTerm.xml',
          checkpoint: '482b6f4eeddf1fc1e347b5a9f293e2184dd01dcacf2695304b80b2d772faad6f'
  name 'DTerm'
  homepage 'https://decimus.net/DTerm'

  accessibility_access true

  app 'DTerm.app'
end
