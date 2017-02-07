cask 'macupdate-desktop' do
  version '6.1.6'
  sha256 'c929ef05f4d292b079c5538bb0c1283706ab845d7d0c342ac4b73b83dfb65489'

  url "http://cdn.macupdate.com/MacUpdateDesktop#{version}.zip"
  appcast 'https://www.macupdate.com/desktop/updates.xml',
          checkpoint: '81693bee3a3b6917465b714432f13730e767b2781eff2cab18a21ba46475187c'
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
