cask 'puppetry' do
  version '1.0.0'
  sha256 '846c0808492721f5b22fa2ad5edf20bf056fb451c382c50533ddcb5ff3d3ff54'

  # github.com/dsheiko/puppetry was verified as official when first introduced to the cask
  url "https://github.com/dsheiko/puppetry/releases/download/v#{version}/puppetry-mac-v#{version}.zip"
  appcast 'https://github.com/dsheiko/puppetry/releases.atom'
  name 'Web testing solution for non-developers on top of Puppeteer and Jest'
  homepage 'https://puppetry.app/'

  app 'puppetry.app'

  zap trash: [
               '~/Library/Application Support/puppetry',
               '~/Library/Preferences/com.electron.puppetry.helper.plist',
               '~/Library/Preferences/com.electron.puppetry.plist',
               '~/Library/Saved Application State/com.electron.puppetry.savedState',
             ]
end
