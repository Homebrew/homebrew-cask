cask 'eloston-chromium' do
  version '58.0.3029.110-1'
  sha256 'a39466fa9dca06fede63043486618e776ff0404ba8c47a4e85c3132e070c4f28'

  # github.com/nixballs/ungoogled-chromium was verified as official when first introduced to the cask
  url "https://github.com/nixballs/ungoogled-chromium/releases/download/#{version}/ungoogled-chromium_#{version}_macos.dmg"
  appcast 'https://ungoogled-software.github.io/ungoogled-chromium-binaries/releases/macos/',
          checkpoint: 'c6ad5cd11b7d64f9042ba410e5fbe241d59eb7891e94136b9c8175ffeb324d9a'
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
