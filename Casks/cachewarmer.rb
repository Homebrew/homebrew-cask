cask 'cachewarmer' do
  version '13'
  sha256 '97f9d743a41c4a38ea3b2af5c33716e72b02e9e11b0fed3000d0a3c584f104f3'

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
