cask 'osxfuse' do
  version '3.10.0'
  sha256 '91fab733685ca325b07656945515ff86cba816870a5ac2231efb86a9e2170772'

  # github.com/osxfuse was verified as official when first introduced to the cask
  url "https://github.com/osxfuse/osxfuse/releases/download/osxfuse-#{version}/osxfuse-#{version}.dmg"
  appcast 'https://github.com/osxfuse/osxfuse/releases.atom'
  name 'OSXFUSE'
  homepage 'https://osxfuse.github.io/'

  auto_updates true
  conflicts_with cask: 'osxfuse-dev'

  pkg "Extras/FUSE for macOS #{version}.pkg"

  postflight do
    set_ownership ['/usr/local/include', '/usr/local/lib']
  end

  uninstall pkgutil: [
                       'com.github.osxfuse.pkg.Core',
                       'com.github.osxfuse.pkg.MacFUSE',
                       'com.github.osxfuse.pkg.PrefPane',
                     ],
            kext:    'com.github.osxfuse.filesystems.osxfusefs'

  caveats do
    reboot
  end
end
