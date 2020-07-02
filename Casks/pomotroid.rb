cask 'pomotroid' do
  version '0.11.1'
  sha256 '026bb0ad91ecda3fa2fb8901cce99b5a5ee9a64eacacf025b9b631d0ec93ac98'

  url "https://github.com/Splode/pomotroid/releases/download/v#{version}/pomotroid-#{version}-macos.dmg"
  appcast 'https://github.com/Splode/pomotroid/releases.atom'
  name 'Pomotroid'
  homepage 'https://github.com/Splode/pomotroid'

  app 'Pomotroid.app'
end
