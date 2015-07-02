cask :v1 => 'cachewarmer' do
  version '12'
  sha256 'f5123d31e2074edf33a5a74ab7c570c6ea161470c0d4d2fd9f7056b497c33de3'

  url "https://glencode.net/_downloads/CacheWarmer-#{version}.pkg"
  name 'CacheWarmer'
  homepage 'https://glencode.net/cachewarmer/'
  license :freemium

  pkg "CacheWarmer-#{version}.pkg"

  uninstall :pkgutil => 'net.glencode.CacheWarmer',
            :launchctl => 'net.glencode.CacheWarmer',
            :delete => [
                        '/etc/newsyslog.d/net.glencode.CacheWarmer.conf',
                        '/usr/local/bin/CacheWarmer',
                        '/Library/LaunchDaemons/net.glencode.CacheWarmer.plist'
                       ]
end
