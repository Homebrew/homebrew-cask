cask 'kdiff3' do
  # note: "3" is not a version number, but an intrinsic part of the product name (3-way diff)
  version '0.9.98'
  sha256 '3cbfb7f30989af2b28658a5f9f331c1a20275f16f42f3126119913b65cb06777'

  url "https://downloads.sourceforge.net/kdiff3/kdiff3/#{version}/kdiff3-#{version}-MacOSX-64Bit.dmg"
  appcast 'https://sourceforge.net/projects/kdiff3/rss?path=/kdiff3',
          checkpoint: 'ff44819d7794d2b61f2afcc381ed9cb01bf4e7f581b588e19e3a3300e04fd457'
  name 'KDiff3'
  homepage 'http://kdiff3.sourceforge.net/'

  app 'kdiff3.app'
  binary "#{appdir}/kdiff3.app/Contents/MacOS/kdiff3"

  zap delete: '~/.kdiff3rc'
end
