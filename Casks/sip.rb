cask 'sip' do
  if MacOS.version <= :sierra
    version '1.2'
    sha256 '93569421eef761ccdd2784d73e5f201d29e5e22ad6814a7a169f459f460bf4ff'
  else
    version '2.3.1'
    sha256 'c1dc9b78a4577d20b2a1e03105f3c9840555f857b1a1fb1fa60ba98dcf4700f9'
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
