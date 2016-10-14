cask 'ntfs-free' do
  version '10.8.2'
  sha256 '1bc7122a2d869b740a35e2dba1fe29c380f21ad07481fc0a46b2f55bf79c574e'

  url "https://downloads.sourceforge.net/ntfsfree/NTFS-free-#{version}.pkg"
  appcast 'https://sourceforge.net/projects/ntfsfree/rss',
          checkpoint: 'f017aa7dbaa29182f562eae6f90a3cce9b04c946ab32baca170cfbcb9724086c'
  name 'NTFS-FREE'
  homepage 'https://sourceforge.net/projects/ntfsfree/'

  pkg "NTFS-free-#{version}.pkg"

  uninstall delete: [
                      '/System/Library/Extensions/ntfs-free.kext',
                      '/sbin/mount_ntfs-free',
                      '/System/Library/Filesystems/ntfs-free.fs',
                    ]
end
