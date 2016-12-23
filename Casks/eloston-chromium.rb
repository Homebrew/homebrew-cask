cask 'eloston-chromium' do
  version '55.0.2883,75-1:9Morello'
  sha256 'e19bedc98ec3b252a29468d1536a4f766570e60b68cdabf33cb158c140f26a90'

  url "https://github.com/Eloston/ungoogled-chromium/releases/download/#{version.before_comma}.#{version.after_comma.before_colon}/ungoogled-chromium_#{version.before_comma}-#{version.after_comma.before_colon}_macos_#{version.after_colon}.dmg"
  appcast 'https://github.com/Eloston/ungoogled-chromium/releases.atom',
          checkpoint: 'e5d42e01d13de904ab33df77bb8d7ebd3432755fe13d7524bdcda988410a7cbe'
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
