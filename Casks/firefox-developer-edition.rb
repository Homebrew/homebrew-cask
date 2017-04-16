cask :v1 => 'firefox-developer-edition' do
  version :latest
  sha256 :no_check

  url 'https://download.mozilla.org/?product=firefox-aurora-latest-ssl&os=osx&lang=en-US'
  homepage 'https://www.mozilla.org/en-US/firefox/developer/'
  license :cc

  app 'FirefoxDeveloperEdition.app'
end
