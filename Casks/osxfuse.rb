cask 'osxfuse' do
  version '3.9.2'
  sha256 'de45388f6aceb547f08112e24f2ed49a2160725ed4590adcc8488a5d5d3f0067'

  # github.com/osxfuse was verified as official when first introduced to the cask
  url "https://github.com/osxfuse/osxfuse/releases/download/osxfuse-#{version}/osxfuse-#{version}.dmg"
  appcast 'https://github.com/osxfuse/osxfuse/releases.atom'
  name 'OSXFUSE'
  homepage 'https://osxfuse.github.io/'

  auto_updates true
  conflicts_with cask: 'osxfuse-dev'

  pkg "Extras/FUSE for macOS #{version}.pkg",
      choices: [
                 'choiceIdentifier' => 'com.github.osxfuse.pkg.MacFUSE',
                 'choiceAttribute'  => 'selected',
                 'attributeSetting' => 1,
               ]

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
