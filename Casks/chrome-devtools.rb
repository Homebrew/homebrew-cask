cask :v1 => 'chrome-devtools' do
  version :latest
  sha256 :no_check

  url 'https://github.com/auchenberg/chrome-devtools-app/raw/master/build/Chrome%20DevTools/osx/Chrome-DevTools.app.zip'
  name 'Chrome DevTools'
  homepage 'https://github.com/auchenberg/chrome-devtools-app'
  license :mit

  app 'Chrome DevTools.app'
end
