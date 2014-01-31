class Sshfs < Cask
  url 'https://github.com/downloads/osxfuse/sshfs/SSHFS-2.4.1.pkg'
  homepage 'http://osxfuse.github.io/'
  version '2.4.1'
  sha1 '6966c455384c59d7acefd66a4c6eb765c31afe5a'
  install 'SSHFS-2.4.1.pkg'
  uninstall :pkgutil => 'com.github.osxfuse.pkg.SSHFS'
end
