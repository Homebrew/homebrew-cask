cask 'eloston-chromium' do
  version '83.0.4103.116-1.2'
  sha256 'd124e42faa0e170f2a46a06b007806d36d31dcf549d809a057916b1ce8657421'

  # github.com/kramred/ungoogled-chromium-binaries/ was verified as official when first introduced to the cask
  url "https://github.com/kramred/ungoogled-chromium-binaries/releases/download/#{version}/ungoogled-chromium_#{version}_macos.dmg"
  appcast 'https://github.com/kramred/ungoogled-chromium-binaries/releases.atom'
  name 'Ungoogled Chromium'
  homepage 'https://ungoogled-software.github.io/ungoogled-chromium-binaries/'

  conflicts_with cask: [
                         'chromium',
                         'freesmug-chromium',
                       ]

  app 'Chromium.app'

  zap trash: [
               '~/Library/Preferences/org.chromium.Chromium.plist',
               '~/Library/Caches/Chromium',
               '~/Library/Application Support/Chromium',
               '~/Library/Saved Application State/org.chromium.Chromium.savedState',
             ]
end
