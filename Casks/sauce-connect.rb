cask 'sauce-connect' do
  version '4.4.10'
  sha256 '40471e35f4c730df88971c1cb6d0fab74c441df9ff819dee4254af5596223c46'

  url "https://saucelabs.com/downloads/sc-#{version}-osx.zip"
  name 'Sauce Connect'
  homepage 'https://wiki.saucelabs.com/display/DOCS/Setting+Up+Sauce+Connect'

  depends_on macos: '>= :mountain_lion'

  binary "sc-#{version}-osx/bin/sc"
end
