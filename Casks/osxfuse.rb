cask 'osxfuse' do
  version '3.5.3'
  sha256 '9d48cbfe360bead9e9fd31bc95e18a90f03be7c4be5b5c62acd7df98c8c0c80b'

  # github.com/osxfuse was verified as official when first introduced to the cask
  url "https://github.com/osxfuse/osxfuse/releases/download/osxfuse-#{version}/osxfuse-#{version}.dmg"
  appcast 'https://github.com/osxfuse/osxfuse/releases.atom',
          checkpoint: '7d27fe5e4795751d1e734f3f8e38d62c5fd299f91b5c5a6885de9720dcba3f99'
  name 'OSXFUSE'
  homepage 'https://osxfuse.github.io/'

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
