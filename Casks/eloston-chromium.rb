cask 'eloston-chromium' do
  version '80.0.3987.106-1'
  sha256 '7ffd7d8764202dc5468372df984162ed9a927dfde9eb3471744b26695f8a892e'

  # github.com/kramred/ungoogled-chromium-binaries was verified as official when first introduced to the cask
  url "https://github.com/kramred/ungoogled-chromium-binaries/releases/download/#{version}/ungoogled-chromium_#{version}.1_macos.dmg"
  appcast 'https://ungoogled-software.github.io/ungoogled-chromium-binaries/releases/macos/'
  name 'Ungoogled Chromium'
  homepage 'https://ungoogled-software.github.io/ungoogled-chromium-binaries/'

  app 'Chromium.app'

  zap trash: [
               '~/Library/Preferences/org.chromium.Chromium.plist',
               '~/Library/Caches/Chromium',
               '~/Library/Application Support/Chromium',
               '~/Library/Saved Application State/org.chromium.Chromium.savedState',
             ]
end
