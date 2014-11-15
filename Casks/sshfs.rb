cask :v1 => 'sshfs' do
  version '2.5.0'
  sha256 'f8f4f71814273ea42dbe6cd92199f7cff418571ffd1b10c0608878d3472d2162'

  url "https://github.com/osxfuse/sshfs/releases/download/osxfuse-sshfs-#{version}/sshfs-#{version}.pkg"
  homepage 'http://osxfuse.github.io/'
  license :oss

  pkg "sshfs-#{version}.pkg"
  uninstall :pkgutil => 'com.github.osxfuse.pkg.SSHFS'
end
