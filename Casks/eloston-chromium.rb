cask 'eloston-chromium' do
  version '58.0.3029.110-1'
  sha256 'a39466fa9dca06fede63043486618e776ff0404ba8c47a4e85c3132e070c4f28'

  # github.com/nixballs/ungoogled-chromium/releases was verified as official when first introduced to the cask
  url "https://github.com/nixballs/ungoogled-chromium/releases/download/#{version}/ungoogled-chromium_#{version}_macos.dmg"
  appcast 'https://github.com/ungoogled-software/ungoogled-chromium-binaries/releases.atom',
          checkpoint: 'dbb87319a87c7ccf876d7df29abf5dbbf95c97935855238aafe9daabd093fd9a'
  name 'Ungoogled Chromium'
  homepage 'https://ungoogled-software.github.io/ungoogled-chromium-binaries/'

  app 'Chromium.app'

  zap delete: [
                '~/Library/Preferences/org.chromium.Chromium.plist',
                '~/Library/Caches/Chromium',
                '~/Library/Application Support/Chromium',
                '~/Library/Saved Application State/org.chromium.Chromium.savedState',
              ]
end
