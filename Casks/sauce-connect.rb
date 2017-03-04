cask 'sauce-connect' do
  version '4.4.2'
  sha256 '9f7672902c7fbe99283b3a96603b2ebcc2a6383005a65f0d73fd56a3403c760e'

  url "https://saucelabs.com/downloads/sc-#{version}-osx.zip"
  name 'Sauce Connect'
  homepage 'https://wiki.saucelabs.com/display/DOCS/Setting+Up+Sauce+Connect'

  depends_on macos: '>= :mountain_lion'

  binary "sc-#{version}-osx/bin/sc"
end
