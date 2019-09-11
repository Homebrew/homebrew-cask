cask 'jalview' do
  version '2.11.0'
  sha256 '640c43b9e564092d4f765b5b30bc901003a7ee80a49442544159bc0bfb207cfc'

  url "https://www.jalview.org/getdown/release/install4j/1.8/Jalview-OFFLINE_macos-app_#{version.dots_to_underscores}-j8.dmg"
  appcast 'https://www.jalview.org/getdown/release/'
  name 'Jalview'
  homepage 'https://www.jalview.org/'

  app 'Jalview.app'
end
