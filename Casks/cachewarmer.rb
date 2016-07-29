cask 'cachewarmer' do
  version '16'
  sha256 'cdbff051ac20e68e761ee73258059b47c4ef2864330dafbc46d2bfd407d4ad94'

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
