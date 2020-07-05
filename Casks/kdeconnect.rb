cask 'kdeconnect' do
  version '20190901'
  sha256 '871d0be35e931b1ce5eee37eb4ca6927557484bf158c1ab46727f0e8939a34f9'

  url "https://github.com/Inokinoki/kde-blog/releases/download/#{version}/kdeconnect-indicator-no-qca.zip"
  appcast 'https://github.com/Inokinoki/kde-blog/releases.atom'
  name 'KDE Connect'
  homepage 'https://github.com/Inokinoki/kde-blog'

  app 'kdeconnect-indicator.app'
end
