cask :v1 => 'paragon-ntfs' do
  version :latest
  sha256 :no_check

  url 'http://dl.paragon-software.com/demo/ntfsmac_trial_u.dmg'
  homepage 'http://www.paragon-software.com/home/ntfs-mac/'
  license :unknown

  pkg 'FSInstaller.app/Contents/Resources/Paragon NTFS for Mac OS X.pkg'
end
