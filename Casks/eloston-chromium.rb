cask 'eloston-chromium' do
  version '80.0.3987.122-1'
  sha256 '44e7521a1ccec06026c5b7d65a6c4121474a689a2f3dc3d1d2477005b592dbe6'

  # github.com/kramred/ungoogled-chromium-binaries was verified as official when first introduced to the cask
  url "https://github.com/kramred/ungoogled-chromium-binaries/releases/download/#{version}/ungoogled-chromium_#{version}.1_macos.dmg"
  appcast 'https://github.com/kramred/ungoogled-chromium-binaries/releases.atom'
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
