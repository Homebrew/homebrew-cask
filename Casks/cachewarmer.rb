cask 'cachewarmer' do
  version '15'
  sha256 'd0625271486829505e4512033fa61648429a1ba9356f6c9671a7e44ea664a9a2'

  # amazonaws.com/glencode_downloads was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/glencode_downloads/CacheWarmer-#{version}.pkg"
  name 'CacheWarmer'
  homepage 'https://assetcache.io/cachewarmer/'
  license :freemium

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
