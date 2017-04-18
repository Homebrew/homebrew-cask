cask 'forklift' do
  version '3.0.3'
  sha256 '77f36691ce8a1370b882c38da4092ca57593ecd9062243304c648f43640eb37e'

  url "http://download.binarynights.com/ForkLift#{version}.zip"
  appcast "https://updates.binarynights.com/ForkLift#{version.major}/update.xml",
          checkpoint: '2d1d358c9d9e548ca535c1e50e625497695bcf7087082a307fe227799044c700'
  name 'ForkLift'
  homepage 'https://binarynights.com/forklift/'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app 'ForkLift.app'

  zap delete: [
                '/Library/LaunchDaemons/com.binarynights.ForkLiftHelper.plist',
                '/Library/PrivilegedHelperTools/com.binarynights.ForkLiftHelper',
                '~/Library/Application Support/ForkLift',
                '~/Library/Caches/com.binarynights.ForkLift-3',
                '~/Library/Cookies/com.binarynights.ForkLift-3.binarycookies',
                '~/Library/Logs/ForkLift',
                '~/Library/Preferences/com.binarynights.ForkLift-3.plist',
                '~/Library/Preferences/com.binarynights.ForkLiftMini.plist',
                '~/Library/Saved Application State/com.binarynights.ForkLift-3.savedState',
              ]
end
