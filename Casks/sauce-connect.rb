cask 'sauce-connect' do
  version '4.5.3'
  sha256 '838d869fbf96ba6595fda2fa40008326337d419e1891a43fee826b995515d4bf'

  url "https://saucelabs.com/downloads/sc-#{version}-osx.zip"
  name 'Sauce Connect'
  homepage 'https://wiki.saucelabs.com/display/DOCS/Sauce+Connect+Proxy'

  binary "sc-#{version}-osx/bin/sc"
end
