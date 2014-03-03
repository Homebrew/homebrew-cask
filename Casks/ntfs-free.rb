class NtfsFree < Cask
  url 'http://downloads.sourceforge.net/sourceforge/ntfsfree/NTFS-free-10.8.2.pkg'
  homepage 'http://sourceforge.net/projects/ntfsfree/'
  version '10.8.2'
  sha256 '1bc7122a2d869b740a35e2dba1fe29c380f21ad07481fc0a46b2f55bf79c574e'
  install 'NTFS-free-10.8.2.pkg'
  uninstall :files => [
    '/System/Library/Extensions/ntfs-free.kext',
    '/sbin/mount_ntfs-free',
    '/System/Library/Filesystems/ntfs-free.fs'
  ]
end
