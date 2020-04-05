cask 'aurora-hdr' do
  version '1.0.0.6432'
  sha256 '5e178f7057f7ac66498629358d76cea3cf7760cd27b2ddf2fc426ff36afd4f0f'

  url "https://downloads.skylum.com/aurorahdr/mac/AuroraHDR_Distribution_v#{version.dots_to_underscores}.zip"
  appcast 'http://aurorahdr2019mac.update.skylum.com/',
          configuration: version.dots_to_underscores
  name 'Aurora HDR'
  homepage 'https://skylum.com/aurorahdr'

  app 'Aurora HDR 2019.app'

  uninstall delete: [
                      '~/Library/Preferences/com.macphun.auroraHDR2019.plist',
                      '~/Library/Caches/com.macphun.auroraHDR2019',
                      '/Applications/Aurora HDR 2019.app',
                      '/Applications/Aurora HDR 2019 Installer.app',
                    ]
end
