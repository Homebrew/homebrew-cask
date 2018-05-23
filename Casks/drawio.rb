cask 'drawio' do
  version '8.6.5'
  sha256 'a0cac5692e8dfd4b21bf1d51c73ebe293159eba90e635adb421e34fd0f89dcce'

  # github.com/jgraph/drawio-desktop was verified as official when first introduced to the cask
  url "https://github.com/jgraph/drawio-desktop/releases/download/v#{version}/draw.io-#{version}.dmg"
  appcast 'https://github.com/jgraph/drawio-desktop/releases.atom',
          checkpoint: 'cee8ceba7da99faa754ee86eb5df8fd103727d462aa9816d2d67dffd9307ed75'
  name 'draw.io Desktop'
  homepage 'https://www.draw.io/'

  app 'draw.io.app'

  zap trash: [
               '~/Library/Preferences/com.jgraph.drawio.desktop.helper.plist',
               '~/Library/Preferences/com.jgraph.drawio.desktop.plist',
               '~/Library/Saved Application State/com.jgraph.drawio.desktop.savedState',
             ]
end
