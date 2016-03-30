cask 'rekordbox' do
  version '4.0.5'
  sha256 'f7c92ad81a4c6bf942eb99e575b60012350ec58fb76a28a6d4311dda597d4d3b'

  url "https://rekordbox.com/_app/files/Install_rekordbox_#{version.dots_to_underscores}.pkg.zip"
  name 'rekordbox'
  homepage 'https://rekordbox.com/en/'
  license :closed

  pkg "Install_rekordbox_#{version.dots_to_underscores}.pkg"

  uninstall pkgutil: 'com.pioneer.rekordbox.*',
            delete:  '/Applications/rekordbox 4/'
end
