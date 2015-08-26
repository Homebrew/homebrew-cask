cask :v1 => 'osxfuse' do
  version '2.8.0'
  sha256 'ad339ffd6592c3808f63ffc5701993cc7209d29baa5cda1828ea93f6470bb273'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/project/osxfuse/osxfuse-#{version}/osxfuse-#{version}.dmg"
  name 'OSXFUSE'
  homepage 'https://osxfuse.github.io/'
  license :bsd

  pkg "Install OSXFUSE #{version[0..-3]}.pkg"

  uninstall :pkgutil => 'com.github.osxfuse.pkg.Core|com.github.osxfuse.pkg.PrefPane',
            :kext => 'com.github.osxfuse.filesystems.osxfusefs'
end
