cask 'sauce-connect' do
  version '4.4.8'
  sha256 'efd6aee54d7ab7e677d813876166b26a7d51161dc81a4f4e5b7899864f671339'

  url "https://saucelabs.com/downloads/sc-#{version}-osx.zip"
  name 'Sauce Connect'
  homepage 'https://wiki.saucelabs.com/display/DOCS/Setting+Up+Sauce+Connect'

  depends_on macos: '>= :mountain_lion'

  binary "sc-#{version}-osx/bin/sc"
end
