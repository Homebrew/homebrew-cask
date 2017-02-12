cask 'eloston-chromium' do
  version '55.0.2883,95'
  sha256 'ce3059098bc77dcc298bf2f81c08bcb541495bdddc3d6a1cc0651fd39ab6f271'

  url "https://github.com/ungoogled-software/ungoogled-chromium-binaries/releases/download/#{version.before_comma}.#{version.after_comma}/ungoogled-chromium_#{version.before_comma}.#{version.after_comma}-1_macos.dmg"
  name 'Ungoogled Chromium'
  homepage 'https://github.com/Eloston/ungoogled-chromium'

  app 'Chromium.app'

  zap delete: [
                '~/Library/Preferences/org.chromium.Chromium.plist',
                '~/Library/Caches/Chromium',
                '~/Library/Application Support/Chromium',
                '~/Library/Saved Application State/org.chromium.Chromium.savedState',
              ]
end
