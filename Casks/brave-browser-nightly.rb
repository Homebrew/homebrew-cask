cask 'brave-browser-nightly' do
  version '0.66.26'
  sha256 '3ab17c73ccede2d570ded3d57b6bf02c98bf865672c2ddab4c3d377e95773ac9'

  # github.com/brave/brave-browser was verified as official when first introduced to the cask
  url "https://github.com/brave/brave-browser/releases/download/v#{version}/Brave-Browser-Nightly.dmg"
  appcast 'https://updates.bravesoftware.com/sparkle/Brave-Browser/nightly/appcast.xml'
  name 'Brave Nightly'
  homepage 'https://brave.com/download-nightly/'

  auto_updates true

  app 'Brave Browser Nightly.app'

  zap trash: [
               '~/Library/Application Support/BraveSoftware/Brave-Browser-Nightly/',
               '~/Library/Preferences/com.brave.Browser.nightly.plist',
               '~/Library/Saved Application State/com.brave.Browser.nightly.savedState',
             ]
end
