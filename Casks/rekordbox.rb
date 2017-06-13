cask 'rekordbox' do
  version '4.3.1'
  sha256 'a9eec817e25936ec920de2948430f1a364909c97ae73aee64fc815c303e5f950'

  url "https://rekordbox.com/_app/files/Install_rekordbox_#{version.dots_to_underscores}.pkg.zip"
  name 'rekordbox'
  homepage 'https://rekordbox.com/en/'

  pkg "Install_rekordbox_#{version.dots_to_underscores}.pkg"

  uninstall pkgutil: 'com.pioneer.rekordbox.*',
            delete:  '/Applications/rekordbox 4/'
end
