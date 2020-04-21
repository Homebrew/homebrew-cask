cask 'electerm' do
  version '1.3.18'
  sha256 '813880b59f7525c5f6fca39d1c364f49d3ffe766310ae2ceb2b0fd255a982cca'

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac.dmg"
  appcast 'https://github.com/electerm/electerm/releases.atom'
  name 'electerm'
  homepage 'https://github.com/electerm/electerm/'

  app 'electerm.app'
end
