cask 'nessus-agent' do
  version '6.7.0'
  sha256 '54beb7a74c3d76c09c65fb271afa5178a004ab558b4b70b901f781fda31205a1'

  url "https://downloads.nessus.org/nessus3dl.php?file=NessusAgent-#{version}.dmg&licence_accept=yes&t=2ff785e94dc0ec2aa9473f2af9cedc9d"
  name 'Nessus Agent'
  homepage 'https://www.tenable.com/products/nessus/'
  license :closed

  pkg 'Install Nessus Agent.pkg'

  uninstall pkgutil:   'com.tenablesecurity.NessusAgent.Preferences',
            launchctl: 'com.tenablesecurity.nessusagent',
            rmdir:     [
                         '/Library/Receipts/Nessus*',
                         '/Library/LaunchDaemons/com.tenablesecurity.nessusd.plist',
                         '/Library/Nessus',
                         '/Library/PreferencePanes/Nessus Preferences.prefPane',
                         '/Applications/Nessus',
                       ]
end
