cask 'multipass' do
  version '0.7.1'
  sha256 '650296310e09bba75ae3c7a17e81dbfb0a3399e5ea7990d7bbe39a569bfec6bd'

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
