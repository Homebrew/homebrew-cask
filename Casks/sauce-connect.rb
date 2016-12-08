cask 'sauce-connect' do
  version '4.3.16'
  sha256 'c41cfb9c71ef77332bac6757708548ce40a557caf99e77355d05890b86141fee'

  url "https://saucelabs.com/downloads/sc-#{version}-osx.zip"
  name 'Sauce Connect'
  homepage 'https://wiki.saucelabs.com/display/DOCS/Setting+Up+Sauce+Connect'

  binary "sc-#{version}-osx/bin/sc"
end
