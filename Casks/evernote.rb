cask 'evernote' do
  if MacOS.version <= :lion
    version '6.1.1_452253'
    sha256 'ad2ad4d426362f8bc6fff205522365cfe9a5bd5f36369fc6c3c8bd7f9dd4e288'
  elsif MacOS.version <= :mavericks
    version '6.8_453748'
    sha256 '53fb93884fbd8f966ef43248dad3a7570ad18eb43fd289ad614ee8cff3a26d33'
  elsif MacOS.version <= :yosemite
    version '6.12.3_455520'
    sha256 'fdda9701f1d8ff56a5e8bcadcf5b04dba66ad7e08511700de4675d20fda2bc71'
  else
    version '7.1_456448'
    sha256 '37004ff921d5c925f53586bc599837d5fbf015465c6f3b27fff308e39ec66ebd'
  end

  url "https://cdn1.evernote.com/mac-smd/public/Evernote_RELEASE_#{version}.dmg"
  appcast 'https://update.evernote.com/public/ENMacSMD/EvernoteMacUpdate.xml',
          checkpoint: 'c8bb88ef8eaea0307aabf169ece947dc46bf683d94fe384e34d9fffee3908241'
  name 'Evernote'
  homepage 'https://evernote.com/'

  auto_updates true

  app 'Evernote.app'

  uninstall quit: [
                    'com.evernote.Evernote',
                    'com.evernote.EvernoteHelper',
                  ]

  zap trash: [
               '~/Library/Application Support/com.evernote.Evernote',
               '~/Library/Application Support/com.evernote.EvernoteHelper',
               '~/Library/Caches/com.evernote.Evernote',
               '~/Library/Preferences/com.evernote.Evernote.plist',
               '~/Library/Preferences/com.evernote.EvernoteHelper.plist',
             ]
end
