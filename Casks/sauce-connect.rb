cask 'sauce-connect' do
  version '4.5.2'
  sha256 'ec8bbd276cdfec084fd5dc10fcb66eab27c1cf66ef8e848f52f505abd9008d21'

  url "https://saucelabs.com/downloads/sc-#{version}-osx.zip"
  name 'Sauce Connect'
  homepage 'https://wiki.saucelabs.com/display/DOCS/Sauce+Connect+Proxy'

  binary "sc-#{version}-osx/bin/sc"
end
