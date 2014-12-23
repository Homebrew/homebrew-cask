cask :v1 => 'kawasemi' do
  version :latest
  sha256 :no_check

  url 'http://store.monokakido.jp/download/Kawasemi2/Kawasemi2.dmg'
  name 'kawasemi'
  homepage 'http://www.monokakido.jp/mac/kawasemi2.html'
  license :commercial

  installer :manual => 'Kawasemi2\ Installer.app/Contents/MacOS/Kawasemi2\ Installer'
  uninstall :delete => '/Library/Input Methods/Kawasemi2.app'
end
