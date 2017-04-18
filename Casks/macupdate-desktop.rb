cask 'macupdate-desktop' do
  version '6.1.8'
  sha256 '4993938c7f4206b6e27316a58c6e9629a271635fde05d50829a0c4ed806662fc'

  url "http://cdn.macupdate.com/MacUpdateDesktop#{version}.zip"
  appcast 'https://www.macupdate.com/desktop/updates.xml',
          checkpoint: '4a5d6fea7b479baa4b9277e4bac1c29e358ac392b3f7a8e19de7bc44b4172f4b'
  name 'MacUpdate Desktop'
  homepage 'https://www.macupdate.com/desktop'

  app 'MacUpdate Desktop.app'

  postflight do
    suppress_move_to_applications
  end

  zap delete: [
                "~/Library/Application Support/MacUpdate/MacUpdate Desktop #{version.major}",
                "~/Library/Caches/com.macupdate.desktop#{version.major}",
                "~/Library/Cookies/com.macupdate.desktop#{version.major}.binarycookies",
                '~/Library/Logs/MacUpdate Desktop',
                "~/Library/Preferences/com.macupdate.desktop#{version.major}.plist",
                "~/Library/Saved Application State/com.macupdate.desktop#{version.major}.savedState",
              ]
end
