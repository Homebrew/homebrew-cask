cask :v1 => 'hammerspoon' do
  version '0.9.33'
  sha256 'a38adf163872c9a9d540f9f0738a0ed230f795bc1c1d967569e56a57f4261e82'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/Hammerspoon/hammerspoon/releases/download/#{version}/Hammerspoon-#{version}.zip"
  appcast 'https://github.com/Hammerspoon/hammerspoon/releases.atom'
  name 'Hammerspoon'
  homepage 'http://www.hammerspoon.org/'
  license :mit

  app 'Hammerspoon.app'
end
