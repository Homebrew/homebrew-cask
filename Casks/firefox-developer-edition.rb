cask :v1 => 'firefox-developer-edition' do
  version :latest
  sha256 :no_check

  url 'https://download.mozilla.org/?product=firefox-aurora-latest-ssl&os=osx&lang=en-US'
  name 'Firefox Developer Edition'
  homepage 'https://www.mozilla.org/en-US/firefox/developer'
  license :mpl
  tags :vendor => 'Firefox'

  app 'FirefoxDeveloperEdition.app'

  zap :delete => [
		   '~/Library/Application Support/Firefox',
		   '~/Library/Caches/Firefox',
		   '~/Library/Preferences/org.mozilla.firefoxdeveloperedition.plist'
         	  ]
end
