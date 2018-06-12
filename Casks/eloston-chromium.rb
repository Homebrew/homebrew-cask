cask 'eloston-chromium' do
  version '66.0.3359.139-1'
  sha256 'f92d0e17bc41ff5ef5f0e7c8e4f1a5adf29483998d401a0f0e5f4d003a1cc672'

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
