cask 'eloston-chromium' do
  version '83.0.4103.116-1'
  sha256 '0537a4f8e1a7f8d51fc0b45ca0b4102de3380853a685ab9dff387b1db37a5188'

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
