cask :v1 => 'sauce-connect' do
  version '4.3.6'
  sha256 '9a678e751658cc207237a7d5aec87aabe4684143c04bf23983f627f0605c9d3b'

  url "https://saucelabs.com/downloads/sc-#{version}-osx.zip"
  name 'Sauce Connect'
  homepage 'https://docs.saucelabs.com/reference/sauce-connect/'
  license :gratis

  binary "sc-#{version}-osx/bin/sc"
end
