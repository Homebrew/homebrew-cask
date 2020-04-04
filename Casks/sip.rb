cask 'sip' do
  if MacOS.version <= :sierra
    version '1.2'
    sha256 '93569421eef761ccdd2784d73e5f201d29e5e22ad6814a7a169f459f460bf4ff'
  else
    version '2.3'
    sha256 '87581305377cb6c6687110272b1ba8a826aa04f0ecb2cc888973b9b52a6edced'
  end

  url "https://sipapp.io/updates/v#{version.major}/sip-#{version}.zip"
  appcast "https://sipapp.io/updates/v#{version.major}/sip.xml"
  name 'Sip'
  homepage 'https://sipapp.io/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Sip.app'

  uninstall quit: 'io.sipapp.Sip-paddle'

  zap trash: [
               '~/.sip_v*',
               '~/Library/Application Support/Sip',
               '~/Library/Application Support/io.sipapp.Sip-paddle',
               '~/Library/Application Support/CrashReporter/Sip_*.plist',
               '~/Library/Caches/io.sipapp.Sip-paddle',
               '~/Library/Cookies/io.sipapp.Sip-paddle.binarycookies',
               '~/Library/Preferences/io.sipapp.Sip-paddle.plist',
               '~/Library/Saved Application State/io.sipapp.Sip-paddle.savedState',
             ]
end
