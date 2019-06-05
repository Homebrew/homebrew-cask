cask 'multipass' do
  version '0.7.0'
  sha256 'f170958e295860d4c4cc0844afe3cc2a8d6def3c1f7ccca9eb21e0c72edb98df'

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
