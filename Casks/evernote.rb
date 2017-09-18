cask 'evernote' do
  if MacOS.version <= :lion
    version '6.1.1_452253'
    sha256 'ad2ad4d426362f8bc6fff205522365cfe9a5bd5f36369fc6c3c8bd7f9dd4e288'
  elsif MacOS.version <= :mavericks
    version '6.8_453748'
    sha256 '53fb93884fbd8f966ef43248dad3a7570ad18eb43fd289ad614ee8cff3a26d33'
  else
    version '6.12.2_455489'
    sha256 '0f9441a07a6659b060325397a096b737c18d4624f4bae37cf5752a551163474b'
  end

  url "https://cdn1.evernote.com/mac-smd/public/Evernote_RELEASE_#{version}.dmg"
  appcast 'https://update.evernote.com/public/ENMacSMD/EvernoteMacUpdate.xml',
          checkpoint: '695a5a12783602df101dc95526b13fe66eb2e4f10bda60c37fdb9b2e1457d195'
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
