cask :v1 => 'paragon-ntfs' do
  # note: version represents major version number only while url does not change for minor version updates
  version '14'
  sha256 '9b2a2e5b0b2eec51ef85aa72048a9da7aa3eab3a07477a3e670dca31cd7a4ad9'

  url "http://dl.paragon-software.com/demo/ntfsmac#{version}_trial_e.dmg"
  name 'Paragon NTFS for Mac'
  homepage 'https://www.paragon-software.com/home/ntfs-mac/'
  license :commercial

  pkg 'FSInstaller.app/Contents/Resources/Paragon NTFS for Mac OS X.pkg'

  uninstall :pkgutil => 'com.paragon-software.filesystems.NTFS.pkg',
            :script => 'Uninstall.app/Contents/Resources/uninstall.sh',
            :launchctl => [
                           'com.paragon.ntfs*',
                           'com.paragon.updater'
                          ]
end
