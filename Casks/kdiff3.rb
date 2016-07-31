cask 'kdiff3' do
  # note: "3" is not a version number, but an intrinsic part of the product name (3-way diff)
  version '0.9.98'
  sha256 '3cbfb7f30989af2b28658a5f9f331c1a20275f16f42f3126119913b65cb06777'

  url "https://downloads.sourceforge.net/kdiff3/kdiff3/#{version}/kdiff3-#{version}-MacOSX-64Bit.dmg"
  appcast 'https://sourceforge.net/projects/kdiff3/rss',
          checkpoint: 'dc9daefc9ddf6b8cc5ef7ffaf061536416cc3350ea7fac9946abbff41aa48ffd'
  name 'KDiff3'
  homepage 'http://kdiff3.sourceforge.net/'
  license :gpl

  app 'kdiff3.app'
  binary "#{appdir}/kdiff3.app/Contents/MacOS/kdiff3"

  zap delete: '~/.kdiff3rc'
end
