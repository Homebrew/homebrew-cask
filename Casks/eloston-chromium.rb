cask 'eloston-chromium' do
  version '81.0.4044.129-1'
  sha256 'c08b8d1c67cc11b245e6c6785b5a7a8991b86b27cf55b9d525ef0a4e2794c560'

  # github.com/kramred/ungoogled-chromium-binaries/ was verified as official when first introduced to the cask
  url "https://github.com/kramred/ungoogled-chromium-binaries/releases/download/#{version}/ungoogled-chromium_#{version}.1_macos.dmg"
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
