cask 'sshfs' do
  version '2.5.0'
  sha256 'f8f4f71814273ea42dbe6cd92199f7cff418571ffd1b10c0608878d3472d2162'

  url "https://github.com/osxfuse/sshfs/releases/download/osxfuse-sshfs-#{version}/sshfs-#{version}.pkg"
  appcast 'https://github.com/osxfuse/sshfs/releases.atom',
          :sha256 => 'ba4e5c3bc3d205d1819ec0250b010a221d170d98100dad8e3cffaa6d49bbbc70'
  name 'SSHFS'
  homepage 'https://osxfuse.github.io/'
  license :gpl

  depends_on :cask => 'osxfuse'

  pkg "sshfs-#{version}.pkg"

  uninstall :pkgutil => 'com.github.osxfuse.pkg.SSHFS'
end
