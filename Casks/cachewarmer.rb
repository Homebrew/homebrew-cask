cask 'cachewarmer' do
  version '20'
  sha256 'b40dd4d7a50cf8a5be3bc570bfa83a590ff354b08970b671053cc940cdbcf317'

  # s3.amazonaws.com/assetcache.io was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/assetcache.io/CacheWarmer-#{version}.pkg"
  appcast 'https://assetcache.io/cachewarmer/release-notes/',
          checkpoint: 'f2c04c1692040d0f8c4da6957cf4b510e6089c0bb53d2b80620bbab1359dc2f9'
  name 'CacheWarmer'
  homepage 'https://assetcache.io/cachewarmer/'

  pkg "CacheWarmer-#{version}.pkg"

  uninstall pkgutil:   'net.glencode.CacheWarmer',
            launchctl: 'net.glencode.CacheWarmer',
            delete:    [
                         '/etc/newsyslog.d/net.glencode.CacheWarmer.conf',
                         '/usr/local/bin/CacheWarmer',
                         '/Library/LaunchDaemons/net.glencode.CacheWarmer.plist',
                         '/Library/Application Support/net.glencode.CacheWarmer',
                       ]
end
