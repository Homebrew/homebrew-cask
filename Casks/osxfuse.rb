cask :v1 => 'osxfuse' do
  version '2.7.4'
  sha256 'e5f43f673062725d76b6c10d379d576f6148f32fab42f6d18455b11f41e92969'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/project/osxfuse/osxfuse-#{version}/osxfuse-#{version}.dmg"
  homepage 'https://osxfuse.github.io/'
  license :oss

  pkg "Install OSXFUSE #{version[0..-3]}.pkg"

  uninstall :pkgutil => 'com.github.osxfuse.pkg.Core|com.github.osxfuse.pkg.PrefPane',
            :kext => 'com.github.osxfuse.filesystems.osxfusefs'
end
