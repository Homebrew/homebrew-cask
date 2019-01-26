cask 'multipass' do
  version '0.5'
  sha256 'b9cdf4bdb65fcebd4cdff510f3a559d2c86d591749bd3d4ea1ec0dd495a42590'

  url "https://github.com/CanonicalLtd/multipass/releases/download/v#{version}/multipass-v#{version}-full-Darwin.pkg"
  appcast 'https://github.com/CanonicalLtd/multipass/releases.atom'
  name 'Multipass'
  homepage 'https://github.com/CanonicalLtd/multipass/'

  pkg "multipass-v#{version}-full-Darwin.pkg"

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
