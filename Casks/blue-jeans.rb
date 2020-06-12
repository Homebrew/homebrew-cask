cask 'blue-jeans' do
  version '2.21.0.195'
  sha256 'aa14b95151c0b525876c292acb4e077892de8a453306dacd89de31022a8f0dc6'

  url "https://swdl.bluejeans.com/desktop-app/mac/#{version.major_minor_patch}/#{version}/BlueJeansInstaller.pkg"
  appcast 'https://www.bluejeans.com/downloads'
  name 'Blue Jeans videoconferencing'
  homepage 'https://www.bluejeans.com/'

  auto_updates true

  pkg 'BluejeansInstaller.pkg'

  uninstall signal:  [
                       ['TERM', 'com.bluejeansnet.Blue'],
                       ['TERM', 'com.bluejeansnet.BlueMenulet'],
                     ],
            pkgutil: 'com.bluejeansnet.*'
end
