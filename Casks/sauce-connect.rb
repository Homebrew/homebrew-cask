cask 'sauce-connect' do
  version '4.5.1'
  sha256 '920ae7bd5657bccdcd27bb596593588654a2820486043e9a12c9062700697e66'

  url "https://saucelabs.com/downloads/sc-#{version}-osx.zip"
  name 'Sauce Connect'
  homepage 'https://wiki.saucelabs.com/display/DOCS/Sauce+Connect+Proxy'

  depends_on macos: '>= :mountain_lion'

  binary "sc-#{version}-osx/bin/sc"
end
