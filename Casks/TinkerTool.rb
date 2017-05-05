cask 'TinkerTool' do
  version :latest
  sha256 :no_check

  # webpack.de/bresink.eu was verified as official when first introduced to the cask
  url 'https://ssl.webpack.de/bresink.eu/download3.php?PHPSESSID=0gc9kvq260r4brokt6o99nmuk1'
  name 'TinkerTool'
  homepage 'https://www.bresink.com/osx/TinkerTool.html'

  app 'TinkerTool.app'
end
