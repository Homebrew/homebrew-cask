cask 'eloston-chromium' do
  version '74.0.3729.131-1.1'
  sha256 'ff91741de6bbe95cf4bb7f9ac85e3a0be3612707f3421b0c25f2b14e897e7a5c'

  # github.com/unpredictable/ungoogled-chromium-binaries was verified as official when first introduced to the cask
  url "https://github.com/unpredictable/ungoogled-chromium-binaries/releases/download/#{version}/ungoogled-chromium_#{version}_macos.dmg"
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
