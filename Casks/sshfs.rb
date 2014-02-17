class Sshfs < Cask
  url 'https://github.com/osxfuse/sshfs/releases/download/osxfuse-sshfs-2.5.0/sshfs-2.5.0.pkg'
  homepage 'http://osxfuse.github.io/'
  version '2.5.0'
  sha1 '3a34953ba62fe99f33e05ff576c4a4b065266d57'
  install 'sshfs-2.5.0.pkg'
  uninstall :pkgutil => 'com.github.osxfuse.pkg.SSHFS'
end
