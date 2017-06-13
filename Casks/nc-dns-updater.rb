cask 'nc-dns-updater' do
  version '2.2'
  sha256 '087ffb9706cee3deca0fb921a20e639e83c8e2b7d0c5698aefcc62868b3ac6ba'

  url 'http://idb.gosmd.net/?smd_process_download=1&download_id=2032'
  name 'NC DNS Updater'
  homepage 'http://idb.gosmd.net/'

  pkg 'NC DNS Updater.mpkg', allow_untrusted: true

  uninstall pkgutil:   'com.laratech.NCDNSUpdater',
            launchctl: 'com.laratech.nc_dns_updater_daemon',
            quit:      'com.laratech.NC-DNS-Updater'
end
