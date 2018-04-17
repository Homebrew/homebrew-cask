cask 'sauce-connect' do
  version '4.4.12'
  sha256 '624f27fcef2b7797ab1b26d6149cc7559f40305e761ac4c6844c59e3125f1abf'

  url "https://saucelabs.com/downloads/sc-#{version}-osx.zip"
  name 'Sauce Connect'
  homepage 'https://wiki.saucelabs.com/display/DOCS/Sauce+Connect+Proxy'

  depends_on macos: '>= :mountain_lion'

  binary "sc-#{version}-osx/bin/sc"
end
