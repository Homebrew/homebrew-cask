cask 'eloston-chromium' do
  version '76.0.3809.100-1'
  sha256 'e96e2cbf9fe370b43b93527a4e13da0832ec6bab21a89a880635ca7ac692dfbe'

  # github.com/kramred/ungoogled-chromium-binaries was verified as official when first introduced to the cask
  url "https://github.com/kramred/ungoogled-chromium-binaries/releases/download/#{version}/ungoogled-chromium_#{version}.1_macos.dmg"
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
