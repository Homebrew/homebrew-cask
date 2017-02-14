cask 'metabase-app' do
  version '0.22.2.1'
  sha256 'bdc748a8f9043130560699bf37e3a8de7801eb1439e8b934c62fbb2402ef421f'

  url "http://downloads.metabase.com/v#{version.major_minor_patch}/Metabase.dmg"
  appcast 'http://downloads.metabase.com/appcast.xml',
          checkpoint: '9f5fd5867d28c703c7d343d61bc6d1fdd397f147900dd0c5c093df122c96b413'
  name 'Metabase'
  homepage 'http://www.metabase.com/'

  app 'Metabase.app'
end
