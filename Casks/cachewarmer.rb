cask 'cachewarmer' do
  version '20'
  sha256 'b40dd4d7a50cf8a5be3bc570bfa83a590ff354b08970b671053cc940cdbcf317'

  # s3.amazonaws.com/assetcache.io was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/assetcache.io/CacheWarmer-#{version}.pkg"
  appcast 'https://assetcache.io/cachewarmer/release-notes/',
          checkpoint: 'e303120cd02a95cbfea82820e2a9f6a9f2bb454b58cbec17660116d25022019e'
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
