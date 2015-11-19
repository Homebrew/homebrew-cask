cask :v1 => 'osxfuse' do
  version '2.8.2'
  sha256 'c0cc4066642136fdd4f5fead10bed2e495f636f86f451deee85dbb5aa95fa7fa'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/project/osxfuse/osxfuse-#{version}/osxfuse-#{version}.dmg"
  name 'OSXFUSE'
  homepage 'https://osxfuse.github.io/'
  license :bsd

  pkg "Install OSXFUSE #{version[0..-3]}.pkg"

  uninstall :pkgutil => 'com.github.osxfuse.pkg.Core|com.github.osxfuse.pkg.PrefPane',
            :kext => 'com.github.osxfuse.filesystems.osxfusefs'

  postflight do
    set_ownership ['/usr/local/include', '/usr/local/lib']
  end

  caveats do
    reboot
  end
end
