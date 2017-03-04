cask 'panconvert' do
  version '0.2.0'
  sha256 'bd678333401cddbeb90a75d20ce3581baa752843d53d3a25b821dbbebc1b04bf'

  url "https://downloads.sourceforge.net/panconvert/PanConvert-#{version}.app.dmg"
  appcast 'https://sourceforge.net/projects/panconvert/rss?path=/Newest',
          checkpoint: '3895fa9fc4f9b5c5603f3af53f6dff0bacb41498e22c448cb8d99a563c65b5b8'
  name 'PanConvert'
  homepage 'http://panconvert.sourceforge.net/'

  app "PanConvert-#{version}.app"
end
