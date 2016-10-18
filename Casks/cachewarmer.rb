cask 'cachewarmer' do
  version '17'
  sha256 'f048be607937ca2884fd64dd5f324cb814ab3ae2e45de64e5978c09709b398ed'

  # s3.amazonaws.com/assetcache.io was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/assetcache.io/CacheWarmer-#{version}.pkg"
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
