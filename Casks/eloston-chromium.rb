cask 'eloston-chromium' do
  version '57.0.2987.133-1'
  sha256 '48846204762fecf5dfa9f381df067b2ba1279f94b1f6af73332e9863af4d1ddd'

  # github.com/9Morello/ungoogled-chromium-binaries was verified as official when first introduced to the cask
  url "https://github.com/9Morello/ungoogled-chromium-binaries/releases/download/#{version.split('-')[0]}/ungoogled-chromium_#{version}_macos.dmg"
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
