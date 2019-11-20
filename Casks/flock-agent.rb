cask 'flock-agent' do
  version '0.1.0'
  sha256 '0470de2540fedcc3856e50a6c9458e5f80c74740a94465a3b1e614aff28e5a2d'

  url "https://github.com/firstlookmedia/flock-agent/releases/download/v#{version}/FlockAgent-#{version}.pkg"
  appcast 'https://github.com/firstlookmedia/flock-agent/releases.atom'
  name 'Flock Agent'
  homepage 'https://github.com/firstlookmedia/flock-agent/'

  pkg "FlockAgent-#{version}.pkg"

  uninstall quit:      'media.firstlook.flock-agent',
            pkgutil:   [
                         'media.firstlook.flock-agent',
                         'com.facebook.osquery',
                       ],
            launchctl: [
                         'media.firstlook.flock-agent',
                         'com.facebook.osqueryd',
                       ],
            delete:    [
                         '/Library/LaunchAgents/com.facebook.osqueryd.plist',
                         '/Library/LaunchDaemons/media.firstlook.flock-agentd.plist',
                         '/private/var/log/osquery',
                         '/usr/local/etc/flock-agent',
                         '/usr/local/var/lib/flock-agent',
                         '/usr/local/var/log/flock-agent',
                         '~/Library/Application Support/Flock Agent/',
                       ]
end
