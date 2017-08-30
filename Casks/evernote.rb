cask 'evernote' do
  if MacOS.version <= :lion
    version '6.1.1_452253'
    sha256 'ad2ad4d426362f8bc6fff205522365cfe9a5bd5f36369fc6c3c8bd7f9dd4e288'
  elsif MacOS.version <= :mavericks
    version '6.8_453748'
    sha256 '53fb93884fbd8f966ef43248dad3a7570ad18eb43fd289ad614ee8cff3a26d33'
  else
    version '6.12_455415'
    sha256 '49b1d878e1e3c6d99f5a572a311acb8542c4552b42444c89ca12b245f0462b37'
  end

  url "https://cdn1.evernote.com/mac-smd/public/Evernote_RELEASE_#{version}.dmg"
  appcast 'https://update.evernote.com/public/ENMacSMD/EvernoteMacUpdate.xml',
          checkpoint: '2dbefcb013755a0822f6898ea75100aa1376dd823cb244d884094744977e95ac'
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
