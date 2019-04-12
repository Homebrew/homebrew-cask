cask 'eloston-chromium' do
  version '73.0.3683.103-1.1'
  sha256 '306441ac633f75f64004d95ac86df2270ced578825d23c955ef49d2fbcd876af'

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
