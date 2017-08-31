cask 'sauce-connect' do
  version '4.4.9'
  sha256 'c88731ffe03c1f0c7ff98e0036a467ea5bce1ff757b27b31c85d6e6e219cdfc5'

  url "https://saucelabs.com/downloads/sc-#{version}-osx.zip"
  name 'Sauce Connect'
  homepage 'https://wiki.saucelabs.com/display/DOCS/Setting+Up+Sauce+Connect'

  depends_on macos: '>= :mountain_lion'

  binary "sc-#{version}-osx/bin/sc"
end
