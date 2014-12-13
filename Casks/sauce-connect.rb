cask :v1 => 'sauce-connect' do
  version '4.3.5'
  sha256 'c79dd136b019b7f55deb81b3bb1c109bdfa339a2fb8e0f3681d40a6e6e2ee40b'

  url "https://saucelabs.com/downloads/sc-#{version}-osx.zip"
  name 'Sauce Connect'
  homepage 'https://docs.saucelabs.com/reference/sauce-connect/'
  license :unknown    # todo: improve this machine-generated value

  binary "sc-#{version}-osx/bin/sc"
end
