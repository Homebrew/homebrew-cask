cask 'osxfuse' do
  version '3.6.0'
  sha256 '83223ae68012882110670d09d1c0d9d5f656fe9fef69c6a10d18cc85a3e2c166'

  # github.com/osxfuse was verified as official when first introduced to the cask
  url "https://github.com/osxfuse/osxfuse/releases/download/osxfuse-#{version}/osxfuse-#{version}.dmg"
  appcast 'https://github.com/osxfuse/osxfuse/releases.atom',
          checkpoint: '90e48b26d42e13829c5ab6a82cd98e734f83eccf28f79744c9529fe0844b0996'
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
