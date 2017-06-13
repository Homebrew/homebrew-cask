cask 'sauce-connect' do
  version '4.4.6'
  sha256 'ebc6a92e4f269a46042c5a82f8da69ef17ffc7784e1d3bbb4d90ad1cf142d946'

  url "https://saucelabs.com/downloads/sc-#{version}-osx.zip"
  name 'Sauce Connect'
  homepage 'https://wiki.saucelabs.com/display/DOCS/Setting+Up+Sauce+Connect'

  depends_on macos: '>= :mountain_lion'

  binary "sc-#{version}-osx/bin/sc"
end
