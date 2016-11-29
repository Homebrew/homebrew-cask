cask 'eloston-chromium' do
  version '53.0.2785.116-1.2'
  sha256 '1ab010b83779f50b69c56a72659437c50ab1f1fc73b9870a77ba3063ee0ef5a5'

  url "https://github.com/Eloston/ungoogled-chromium/releases/download/#{version}/ungoogled-chromium_#{version}_macos.dmg"
  appcast 'https://github.com/Eloston/ungoogled-chromium/releases.atom',
          checkpoint: 'fb8dc0c21f90efbde4e82a23c76fe559991632f0b4bcd551e11a99976be84f34'
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
