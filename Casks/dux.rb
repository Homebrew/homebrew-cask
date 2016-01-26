cask 'dux' do
  version '2014.04.15'
  sha256 'e9cd44917e64ca445cad79b5fe8e2a2e293f96bbd4e944fd81398d36c19fa5c7'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/abhibeckert/Dux/releases/download/#{version}/Dux-#{version}.zip"
  appcast 'https://github.com/abhibeckert/Dux/releases.atom',
          checkpoint: '7515bf959b73b956ceb967351c7e299cbb3668a53d35f9c770eb72e00d93ced6'
  name 'Dux'
  homepage 'http://duxapp.com/'
  license :public_domain

  app 'Dux.app'

  zap delete: [
                '~/Library/Preferences/com.duxapp.Dux.plist',
                '~/Library/Application Support/Dux/',
              ]
end
