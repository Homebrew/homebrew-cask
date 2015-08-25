cask :v1 => 'osxfuse' do
  version '3.0.4'
  sha256 'd6d6e9c35633d6fc631c219842233b17c0bb042a2a87919e2207ec2a62d52726'

  url "https://github.com/osxfuse/osxfuse/releases/download/osxfuse-#{version}/osxfuse-#{version}.dmg"
  appcast 'https://github.com/osxfuse/osxfuse/releases.atom'
  name 'osxfuse'
  homepage 'https://osxfuse.github.io/'
  license :bsd

  pkg "Extras/FUSE for OS X #{version}.pkg"

  uninstall :pkgutil => 'com.github.osxfuse.pkg.Core|com.github.osxfuse.pkg.PrefPane',
            :kext => 'com.github.osxfuse.filesystems.osxfusefs'
end
