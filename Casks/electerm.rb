cask 'electerm' do
  version '1.3.35'
  sha256 '7b585b2946cd8a948b4c73ec9c52475176cd7043f60a2a66f06a14c05017033a'

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac.dmg"
  appcast 'https://github.com/electerm/electerm/releases.atom'
  name 'electerm'
  homepage 'https://github.com/electerm/electerm/'

  app 'electerm.app'
end
