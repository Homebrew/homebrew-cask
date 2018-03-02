cask 'macupdate' do
  version '6.2.1'
  sha256 '684c07a1b8e6a832008b1740358d31578e4ba2aef9c2bcb2a7d1ae3354a104f3'

  url 'https://www.macupdate.com/mud-download'
  appcast 'https://www.macupdate.com/app/mac/8544/macupdate-desktop',
          checkpoint: 'b30b300765edb19c4334d9de0fafd5eb93568145a22de23adce52a6efd05b9e6'
  name 'MacUpdate Desktop'
  homepage 'https://www.macupdate.com/desktop'

  app 'MacUpdate Desktop.app'

  zap trash: [
               "~/Library/Application Support/MacUpdate/MacUpdate Desktop #{version.major}",
               "~/Library/Caches/com.macupdate.desktop#{version.major}",
               "~/Library/Cookies/com.macupdate.desktop#{version.major}.binarycookies",
               '~/Library/Logs/MacUpdate Desktop',
               "~/Library/Preferences/com.macupdate.desktop#{version.major}.plist",
               "~/Library/Saved Application State/com.macupdate.desktop#{version.major}.savedState",
             ]
end
