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
    version '7.0.3_456341'
    sha256 '697df9e2c1d8d2ad25899c498f197ba1ccf8ee7db1876efa4fae11eaff3f9817'
  end

  url "https://cdn1.evernote.com/mac-smd/public/Evernote_RELEASE_#{version}.dmg"
  appcast 'https://update.evernote.com/public/ENMacSMD/EvernoteMacUpdate.xml',
          checkpoint: '987dbc3efa10c4586af3f3b8764d16d2d3bea87b086eeae52b26dd24017f19d6'
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
