cask 'multipass' do
  version '0.10.0'
  sha256 '1359cffaaefe44044659f0101fcf4f0f96f1d1ba30d2756c4c56cf4e6c6f3275'

  url "https://github.com/CanonicalLtd/multipass/releases/download/v#{version}/multipass-#{version}+mac-Darwin.pkg"
  appcast 'https://github.com/CanonicalLtd/multipass/releases.atom'
  name 'Multipass'
  homepage 'https://github.com/CanonicalLtd/multipass/'

  pkg "multipass-#{version} mac-Darwin.pkg"

  uninstall launchctl: 'com.canonical.multipassd',
            pkgutil:   'com.canonical.multipass.*',
            delete:    [
                         '/Applications/Multipass.app',
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
