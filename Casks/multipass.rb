cask 'multipass' do
  version '0.9.0'
  sha256 'eb42b68f7a38c903078faf2a27a16b04da4c2512a19c15869c445800acf50e80'

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
