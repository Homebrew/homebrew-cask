cask :v1 => 'nndd' do
  version '2.4.3'
  sha256 '6a73dcad2e73d877ad1503ed1162cae1a1c84f21d1abaa6aaf9b31bb2fbca531'

  url 'http://sourceforge.jp/frs/redir.php?f=%2Fnndd%2F62201%2FNNDD_v2_4_3.dmg'
  name 'NNDD'
  homepage 'http://sourceforge.jp/projects/nndd/'
  license :x11

  installer :script => 'Install NNDD.app/Contents/MacOS/Install NNDD',
            :args   => %w[-silent],
            :sudo   => true
  uninstall :script => { :executable => 'Install NNDD.app/Contents/MacOS/Install NNDD' }

  depends_on :cask => 'adobe-air'
end
