cask 'macupdate' do
  version '6.1.9'
  sha256 'dce250e6c000809ab25f52706f4bbce3ca1321f34de57c949f64d65638c38ceb'

  url "http://dl2.macupdate.com/MacUpdateDesktop#{version}.zip"
  appcast 'https://www.macupdate.com/desktop/updates.xml',
          checkpoint: '4a5d6fea7b479baa4b9277e4bac1c29e358ac392b3f7a8e19de7bc44b4172f4b'
  name 'MacUpdate Desktop'
  homepage 'https://www.macupdate.com/desktop'

  app 'MacUpdate Desktop.app'

  zap delete: [
                "~/Library/Application Support/MacUpdate/MacUpdate Desktop #{version.major}",
                "~/Library/Caches/com.macupdate.desktop#{version.major}",
                "~/Library/Cookies/com.macupdate.desktop#{version.major}.binarycookies",
                '~/Library/Logs/MacUpdate Desktop',
                "~/Library/Preferences/com.macupdate.desktop#{version.major}.plist",
                "~/Library/Saved Application State/com.macupdate.desktop#{version.major}.savedState",
              ]
end
