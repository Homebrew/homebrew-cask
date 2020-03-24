cask 'multipass' do
  version '1.1.0'
  sha256 'd7773578b38db260ac716ae558a91a02982046ea08145211cdfde70d1673ef13'

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
