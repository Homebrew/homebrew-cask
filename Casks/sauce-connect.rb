cask 'sauce-connect' do
  version '4.3.13'
  sha256 '97541227092564a4f15f25ba9b3257da8e1ffebc827d5c5cbd66e674d8a20cba'

  url "https://saucelabs.com/downloads/sc-#{version}-osx.zip"
  name 'Sauce Connect'
  homepage 'https://docs.saucelabs.com/reference/sauce-connect/'
  license :gratis

  binary "sc-#{version}-osx/bin/sc"
end
