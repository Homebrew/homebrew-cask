cask 'multipass' do
  version '0.9.0'
  sha256 '8fcdf19e2e4dc351c5318b636352d97ec8a3a61ff85eb2b8a33baa101c36c51d'

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
                       ]

  zap trash: [
               '/var/root/Library/Application Support/multipassd',
               '/Library/Logs/Multipass',
             ]
end
