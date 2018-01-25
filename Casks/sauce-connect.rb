cask 'sauce-connect' do
  version '4.4.11'
  sha256 '220d6c29496ce770b6f303557b712ab271161f6c5b4be4e711885986ba87fb80'

  url "https://saucelabs.com/downloads/sc-#{version}-osx.zip"
  name 'Sauce Connect'
  homepage 'https://wiki.saucelabs.com/display/DOCS/Sauce+Connect+Proxy'

  depends_on macos: '>= :mountain_lion'

  binary "sc-#{version}-osx/bin/sc"
end
