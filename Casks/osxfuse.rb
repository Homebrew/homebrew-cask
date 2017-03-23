cask 'osxfuse' do
  version '3.5.6'
  sha256 'db4d379200b741ac2f14b2eef61eaabbd1939ed9087a5530a9ec77953831548b'

  # github.com/osxfuse was verified as official when first introduced to the cask
  url "https://github.com/osxfuse/osxfuse/releases/download/osxfuse-#{version}/osxfuse-#{version}.dmg"
  appcast 'https://github.com/osxfuse/osxfuse/releases.atom',
          checkpoint: '20c73238f027f8dda4dd1c5e8943e114d87ead4a5bd2e96eef4fdfc4bdd5d6fb'
  name 'OSXFUSE'
  homepage 'https://osxfuse.github.io/'

  auto_updates true

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
