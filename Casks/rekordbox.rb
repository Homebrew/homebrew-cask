cask 'rekordbox' do
  version '4.0.5'
  sha256 'c74d5d099092e7fd7c2bc24920d26be836f73e34a217100b1d41cab117c40072'

  url "https://rekordbox.com/_app/files/Install_rekordbox_#{version.gsub('.', '_')}.pkg.zip"
  name 'rekordbox'
  homepage 'https://rekordbox.com/en/'
  license :closed

  pkg "Install_rekordbox_#{version.gsub('.', '_')}.pkg"

  uninstall pkgutil: 'com.pioneer.rekordbox.*',
            delete:  '/Applications/rekordbox 4/'
end
