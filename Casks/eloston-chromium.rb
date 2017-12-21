cask 'eloston-chromium' do
  version '62.0.3202.94-1'
  sha256 '411d87525aec417c79121dd42eb70ad0da4c96e2efdc917dbac5bff6b70e34b9'

  # github.com/tectiv3/ungoogled-chromium-binaries was verified as official when first introduced to the cask
  url "https://github.com/tectiv3/ungoogled-chromium-binaries/releases/download/#{version.split('-')[0]}/ungoogled-chromium_#{version}_macos.dmg"
  appcast 'https://ungoogled-software.github.io/ungoogled-chromium-binaries/releases/macos/',
          checkpoint: 'b7ee538723b3bd6e0769c03b3cd4d9ca53160cdf288399129bd80d1fef27cd27'
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
