cask 'sauce-connect' do
  version '4.5.0'
  sha256 '6346b99c467a77eb433fc0e7afe3de53a4c8da0aed063e97d766cf15ced468ea'

  url "https://saucelabs.com/downloads/sc-#{version}-osx.zip"
  name 'Sauce Connect'
  homepage 'https://wiki.saucelabs.com/display/DOCS/Sauce+Connect+Proxy'

  depends_on macos: '>= :mountain_lion'

  binary "sc-#{version}-osx/bin/sc"
end
