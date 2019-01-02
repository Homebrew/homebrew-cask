cask 'across-lite' do
  version '2.4.4,2442'
  sha256 '71e1b174415ea2582642f4861c0ae748b8afa1232c53adac5acddf5d5ea3a39b'

  url "http://www.litsoft.com/across/alite/download/download.php/al#{version.after_comma}osx.dmg?os=macosx"
  name 'Across Lite'
  homepage 'http://www.litsoft.com/across/alite/download/'

  app 'Across Lite.app'
end
