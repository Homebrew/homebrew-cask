cask 'sauce-connect' do
  version '4.5.4'
  sha256 '7dd691a46a57c7c39f527688abd4825531d25a8a1c5b074f684783e397529ba6'

  url "https://saucelabs.com/downloads/sc-#{version}-osx.zip"
  name 'Sauce Connect'
  homepage 'https://wiki.saucelabs.com/display/DOCS/Sauce+Connect+Proxy'

  binary "sc-#{version}-osx/bin/sc"
end
