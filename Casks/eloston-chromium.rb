cask 'eloston-chromium' do
  version '80.0.3987.163-1'
  sha256 'de29e0517e2da1c01c64177f4cece5a503359e86ec37c147b3631181b3fdeed2'

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
