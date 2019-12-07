cask 'nextcloud' do
  if MacOS.version <= :el_capitan
    version '2.6.1.20191104-legacy'
    sha256 '17e6ec49fd937ef5f2028785576ed07b96eb529229fd3ff5f75c5debcfa1b4a2'
  else
    version '2.6.1.20191105'
    sha256 'baf5d7920dc0753fac5e15ad3abebe142e3588d6603785c288479cd3162a6d63'
  end

  url "https://download.nextcloud.com/desktop/releases/Mac/Installer/Nextcloud-#{version}.pkg"
  appcast 'https://download.nextcloud.com/desktop/releases/Mac/Installer/'
  name 'Nextcloud'
  homepage 'https://nextcloud.com/'

  depends_on macos: '>= :yosemite'

  pkg "Nextcloud-#{version}.pkg"

  uninstall pkgutil: 'com.nextcloud.desktopclient'
end
