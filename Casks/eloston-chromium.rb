cask 'eloston-chromium' do
  version '67.0.3396.62-1'
  sha256 'e120b1ebc5bacaec1b0ed6db197b728624e376dd792d55a860d7225a0aa50f3e'

  # github.com/tectiv3/ungoogled-chromium-binaries was verified as official when first introduced to the cask
  url "https://github.com/tectiv3/ungoogled-chromium-binaries/releases/download/#{version}/ungoogled-chromium_#{version}_macos.dmg"
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
