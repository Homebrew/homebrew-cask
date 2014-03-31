class Sshfs < Cask
  url 'https://github.com/osxfuse/sshfs/releases/download/osxfuse-sshfs-2.5.0/sshfs-2.5.0.pkg'
  homepage 'http://osxfuse.github.io/'
  version '2.5.0'
  sha256 'f8f4f71814273ea42dbe6cd92199f7cff418571ffd1b10c0608878d3472d2162'
  install 'sshfs-2.5.0.pkg'
  uninstall :pkgutil => 'com.github.osxfuse.pkg.SSHFS'
end
