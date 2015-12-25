cask 'hammerspoon' do
  version '0.9.43'
  sha256 'c0ae3646f944c3f0f38561dfd54a4d9cdfdc512c3e980c2ea3053d2b732c5f15'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/Hammerspoon/hammerspoon/releases/download/#{version}/Hammerspoon-#{version}.zip"
  appcast 'https://github.com/Hammerspoon/hammerspoon/releases.atom',
          :sha256 => 'bab80d4d4a6fe6ad8956053b0e1e51a16dcb010e866dc328a7cc34463eaa7bf9'
  name 'Hammerspoon'
  homepage 'http://www.hammerspoon.org/'
  license :mit

  app 'Hammerspoon.app'
end
