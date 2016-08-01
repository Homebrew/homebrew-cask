cask 'osxfuse' do
  version '2.8.3'
  sha256 'b0f05fa6e74372b73417e89bfd103a46a0b968239f03832755e424bec09051e6'

  # sourceforge.net/osxfuse was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxfuse/osxfuse-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxfuse/rss',
          checkpoint: 'd137ba68265d71c31ce6124b0db2918543b38d6deb4afdf42f13097420c00b6e'
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
