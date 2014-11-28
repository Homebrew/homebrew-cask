cask :v1 => 'ntfs-free' do
  version '10.8.2'
  sha256 '1bc7122a2d869b740a35e2dba1fe29c380f21ad07481fc0a46b2f55bf79c574e'

  url "https://downloads.sourceforge.net/sourceforge/ntfsfree/NTFS-free-#{version}.pkg"
  homepage 'http://sourceforge.net/projects/ntfsfree/'
  license :oss

  pkg "NTFS-free-#{version}.pkg"

  uninstall :delete => [
                        '/System/Library/Extensions/ntfs-free.kext',
                        '/sbin/mount_ntfs-free',
                        '/System/Library/Filesystems/ntfs-free.fs',
                       ]
end
