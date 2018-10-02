cask 'eloston-chromium' do
  version '69.0.3497.100-1'
  sha256 'b8f4aebf2c18847fbc654ed23a50768deb3812ed1ace0d21c93b059c609c6614'

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
