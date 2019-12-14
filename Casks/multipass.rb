cask 'multipass' do
  version '0.9.0'
  sha256 '930fd314e0de48cc9ef61cd822013531554ea363843f89138e5b77db305db19f'

  url "https://github.com/CanonicalLtd/multipass/releases/download/v#{version}/multipass-#{version}+mac-Darwin.pkg"
  appcast 'https://github.com/CanonicalLtd/multipass/releases.atom'
  name 'Multipass'
  homepage 'https://github.com/CanonicalLtd/multipass/'

  pkg "multipass-#{version} mac-Darwin.pkg"

  uninstall launchctl: 'com.canonical.multipassd',
            pkgutil:   'com.canonical.multipass.*',
            delete:    [
                         '/usr/local/bin/multipass',
                         '/usr/local/etc/bash_completion.d/multipass',
                         '/var/root/Library/Caches/multipassd',
                         '/Library/Application Support/com.canonical.multipass',
                       ]

  zap trash: [
               '/var/root/Library/Application Support/multipassd',
               '/var/root/Library/Preferences/multipassd',
               '/Library/Logs/Multipass',
             ]
end
