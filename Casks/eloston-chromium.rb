cask 'eloston-chromium' do
  version '70.0.3538.77-1'
  sha256 'f097d5501b8ca51fc5256c4a0e0093237bd73ad1dbf32bf31486f97f76f79b0d'

  # github.com/chase9/ungoogled-chromium-binaries was verified as official when first introduced to the cask
  url "https://github.com/chase9/ungoogled-chromium-binaries/releases/download/#{version}/ungoogled-chromium_#{version}_macos.dmg"
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
