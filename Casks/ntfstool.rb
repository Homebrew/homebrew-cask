cask 'ntfstool' do
  version '2.3.0'
  sha256 'dcab362ff0e3b3f0bc0fae6429246d178812c0cdd554a0c931502c89dda8e8c8'

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
