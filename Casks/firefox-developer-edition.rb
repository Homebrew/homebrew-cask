class FirefoxDeveloperEdition < Cask
  version :latest
  sha256 :no_check

  url 'https://download.mozilla.org/?product=firefox-aurora-latest-ssl&os=osx&lang=en-US'
  homepage 'https://developer.mozilla.org/en-US/Firefox/Developer_Edition'
  license :unknown

  app 'FirefoxDeveloperEdition.app'
end
