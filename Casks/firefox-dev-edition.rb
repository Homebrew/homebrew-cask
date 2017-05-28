cask :v1 => 'firefox-dev-edition' do
  version :latest
  sha256 :no_check

  url 'https://download.mozilla.org/?product=firefox-aurora-latest-ssl&os=osx&lang=en-US'
  name 'Firefox Developer Edition'
  homepage 'https://www.mozilla.org/en-US/firefox/developer/'
  license :mpl

  app 'FirefoxDeveloperEdition.app'
end
