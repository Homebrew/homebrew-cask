cask 'osxfuse' do
  version '2.8.3'
  sha256 'b0f05fa6e74372b73417e89bfd103a46a0b968239f03832755e424bec09051e6'

  # sourceforge.net/sourceforge/osxfuse was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/sourceforge/osxfuse/osxfuse-#{version}.dmg"
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
