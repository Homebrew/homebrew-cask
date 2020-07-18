cask 'eloston-chromium' do
  version '84.0.4147.89-1'
  sha256 'af81afc0f82d19eb77496bf3ca0f9db4091c17119b8d28f2b34d44c33029f24f'

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
