cask 'rekordbox' do
  version '4.2.4'
  sha256 '00c094a64ba486f8230c4627bfb84f6036c7e501d8d936acd732aa5fd64648d5'

  url "https://rekordbox.com/_app/files/Install_rekordbox_#{version.dots_to_underscores}.pkg.zip"
  name 'rekordbox'
  homepage 'https://rekordbox.com/en/'

  pkg "Install_rekordbox_#{version.dots_to_underscores}.pkg"

  uninstall pkgutil: 'com.pioneer.rekordbox.*',
            delete:  '/Applications/rekordbox 4/'
end
