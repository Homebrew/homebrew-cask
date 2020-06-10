cask 'osxfuse' do
  version '3.10.6'
  sha256 '14e1599f7fde77164a49ee33cb94e6d2e003e776b477f0ae3cc885f62d926a03'

  # github.com/osxfuse/ was verified as official when first introduced to the cask
  url "https://github.com/osxfuse/osxfuse/releases/download/osxfuse-#{version}/osxfuse-#{version}.dmg"
  appcast 'https://github.com/osxfuse/osxfuse/releases.atom'
  name 'OSXFUSE'
  homepage 'https://osxfuse.github.io/'

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

  zap trash: '~/Library/Caches/com.github.osxfuse.OSXFUSEPrefPane'

  caveats do
    reboot
  end
end
