cask 'osxfuse' do
  version '2.8.3'
  sha256 '282a798eb6c5b1bf6c1067dbaf46d5f37fa5be7de3aa0260a0887ab8b121cb34'

  # sourceforge.net/project/osxfuse was verified as official when first introduced to the cask
  url "http://downloads.sourceforge.net/sourceforge/osxfuse/osxfuse-#{version}.dmg"
  name 'OSXFUSE'
  homepage 'https://osxfuse.github.io/'
  license :bsd

  pkg "Install OSXFUSE #{version.major_minor}.pkg"

  postflight do
    set_ownership ['/usr/local/include', '/usr/local/lib']
  end

  uninstall pkgutil: 'com.github.osxfuse.pkg.Core|com.github.osxfuse.pkg.PrefPane',
            kext:    'com.github.osxfuse.filesystems.osxfusefs'

  caveats do
    reboot
  end
end
