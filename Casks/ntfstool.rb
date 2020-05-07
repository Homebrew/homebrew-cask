cask 'ntfstool' do
  version '2.2.0'
  sha256 'd0c9ac70759774e3aea99709de9145c288dc3c179fcdd5f793d1efe818d0d1fb'

  url "https://github.com/ntfstool/ntfstool/releases/download/#{version}/NTFSTool-#{version}.dmg"
  appcast 'https://github.com/ntfstool/ntfstool/releases.atom'
  name 'NTFSTool'
  homepage 'https://github.com/ntfstool/ntfstool'

  auto_updates true
  depends_on cask: 'osxfuse'

  app 'NTFSTool.app'

  zap trash: [
               '~/Library/Logs/NTFSTool',
               '~/Library/Preferences/com.ntfstool.aile.plist',
             ]
end
