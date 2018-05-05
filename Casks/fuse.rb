cask 'fuse' do
  version '1.8.1.15610'
  sha256 '448fd88fef4dde6b258db3304dcbf8416237fd35ee928d48c4a0bc9d40d0556a'

  url "https://www.fusetools.com/downloads/#{version}/osx"
  name 'Fuse Fusetools'
  homepage 'https://www.fusetools.com/'

  depends_on macos: '>= :mavericks'

  pkg "fuse_osx_#{version.dots_to_underscores}"

  uninstall pkgutil: 'com.fusetools.fuse'
end
