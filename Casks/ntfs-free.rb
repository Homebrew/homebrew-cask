class NtfsFree < Cask
  url 'http://downloads.sourceforge.net/sourceforge/ntfsfree/NTFS-free-10.8.2.pkg'
  homepage 'http://sourceforge.net/projects/ntfsfree/'
  version '10.8.2'
  sha1 '25698ee79c460e3a90bc4c4cc9f5de4e77f7b73f'
  install 'NTFS-free-10.8.2.pkg'
  uninstall :files => [
    '/System/Library/Extensions/ntfs-free.kext',
    '/sbin/mount_ntfs-free',
    '/System/Library/Filesystems/ntfs-free.fs'
  ]
end
