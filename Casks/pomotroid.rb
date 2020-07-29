cask 'pomotroid' do
  version '0.10.0'
  sha256 '35aef70d5022a41f4e9d081310623d0b47c2fdce56daf9c6026a3bd3039e9732'

  url "https://github.com/Splode/pomotroid/releases/download/v#{version}/pomotroid-#{version}-macos.dmg"
  appcast 'https://github.com/Splode/pomotroid/releases.atom'
  name 'Pomotroid'
  homepage 'https://github.com/Splode/pomotroid'

  app 'Pomotroid.app'
end
