cask 'rekordbox' do
  version '4.5.0'
  sha256 '2acd6ade97eb50c2bbe254e484e385148203a5f5d6d052d4daf5df174b94515b'

  url "https://rekordbox.com/_app/files/Install_rekordbox_#{version.dots_to_underscores}.pkg.zip"
  name 'rekordbox'
  homepage 'https://rekordbox.com/en/'

  pkg "Install_rekordbox_#{version.dots_to_underscores}.pkg"

  uninstall pkgutil: 'com.pioneer.rekordbox.*',
            delete:  '/Applications/rekordbox 4/'
end
