cask 'eloston-chromium' do
  version '64.0.3282.186-1'
  sha256 'c56e2b5d04655c07403f6e8aa15403dd8d8ad75c06ec052e478e46d4cd051304'

  # github.com/tectiv3/ungoogled-chromium-binaries was verified as official when first introduced to the cask
  url "https://github.com/tectiv3/ungoogled-chromium-binaries/releases/download/#{version}/ungoogled-chromium_#{version}_macos.dmg"
  appcast 'https://ungoogled-software.github.io/ungoogled-chromium-binaries/releases/macos/',
          checkpoint: 'cfd81a68aafbc79671b5ce22dbb2cc0a56f9b05b1c3b5991368c79ee78d4b2db'
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
