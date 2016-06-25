cask 'firefoxdeveloperedition-cn' do
  version :latest
  sha256 :no_check

  url 'https://download.mozilla.org/?product=firefox-aurora-latest-l10n&os=osx&lang=zh-CN'
  name 'Mozilla Firefox Developer Edition'
  homepage 'https://www.mozilla.org/zh-CN/firefox/developer/'
  license :mpl

  app 'FirefoxDeveloperEdition.app'
end
