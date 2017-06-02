cask 'evernote' do
  if MacOS.version <= :lion
    version '6.1.1_452253'
    sha256 'ad2ad4d426362f8bc6fff205522365cfe9a5bd5f36369fc6c3c8bd7f9dd4e288'
  elsif MacOS.version <= :mavericks
    version '6.8_453748'
    sha256 '53fb93884fbd8f966ef43248dad3a7570ad18eb43fd289ad614ee8cff3a26d33'
  else
    version '6.11.1_455059'
    sha256 'abd063009f8737543606ff8983459c7bd46c550f73c303c3d94f3d4c94063021'
  end

  url "https://cdn1.evernote.com/mac-smd/public/Evernote_RELEASE_#{version}.dmg"
  appcast 'https://update.evernote.com/public/ENMacSMD/EvernoteMacUpdate.xml',
          checkpoint: 'ee51c28872182cf0a6f498e3837079e9070ddaf2a558798f95fe3e895d1ee2f9'
  name 'Evernote'
  homepage 'https://evernote.com/'

  auto_updates true

  app 'Evernote.app'

  uninstall quit: [
                    'com.evernote.Evernote',
                    'com.evernote.EvernoteHelper',
                  ]

  zap delete: [
                '~/Library/Application Support/com.evernote.Evernote',
                '~/Library/Application Support/com.evernote.EvernoteHelper',
                '~/Library/Caches/com.evernote.Evernote',
                '~/Library/Preferences/com.evernote.Evernote.plist',
                '~/Library/Preferences/com.evernote.EvernoteHelper.plist',
              ]
end
