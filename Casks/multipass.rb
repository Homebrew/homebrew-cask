cask 'multipass' do
  version '2018.10.1'
  sha256 'a5b66f265e4d94e6ce8ed2daa85a093611ef0a01b4f90611ac8d2af1b1454c86'

  url "https://github.com/CanonicalLtd/multipass/releases/download/#{version}/multipass-#{version}-full-Darwin.pkg"
  appcast 'https://github.com/CanonicalLtd/multipass/releases.atom'
  name 'Multipass'
  homepage 'https://github.com/CanonicalLtd/multipass/'

  pkg "multipass-#{version}-full-Darwin.pkg"

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
