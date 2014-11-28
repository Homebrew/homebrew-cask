cask :v1 => 'osxfuse' do
  version '2.7.2'
  sha256 '40ebab0919c6ae34221c51815830bc5eefe5f286619eeee85e2b7cb8df266d55'

  url "https://downloads.sourceforge.net/project/osxfuse/osxfuse-#{version}/osxfuse-#{version}.dmg"
  homepage 'https://osxfuse.github.io/'
  license :oss

  pkg "Install OSXFUSE #{version[0..-3]}.pkg"

  uninstall :pkgutil => 'com.github.osxfuse.pkg.Core|com.github.osxfuse.pkg.PrefPane',
            :kext => 'com.github.osxfuse.filesystems.osxfusefs'
end
