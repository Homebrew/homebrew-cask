cask 'powershell' do
  version '6.0.0-rc'
  sha256 '187dc2772e06319a8e71c71197a8a8287cb12515c4a9e6a9546dec717720609c'

  url "https://github.com/PowerShell/PowerShell/releases/download/v#{version}/powershell-#{version}-osx.10.12-x64.pkg"
  appcast 'https://github.com/PowerShell/PowerShell/releases.atom',
          checkpoint: 'd9937dd818ba87d17bd4410898582a5e4ab8d2937aa3c4715acc6dfa887e6960'
  name 'PowerShell'
  homepage 'https://github.com/PowerShell/PowerShell'

  depends_on formula: 'openssl'
  depends_on macos: '>= :sierra'

  pkg "powershell-#{version}-osx.10.12-x64.pkg"

  uninstall pkgutil: 'com.microsoft.powershell'

  zap trash: [
               '~/.cache/powershell',
               '~/.config/PowerShell',
               '~/.local/share/powershell',
             ],
      rmdir: [
               '~/.cache',
               '~/.config',
               '~/.local/share',
               '~/.local',
             ]

  caveats <<~EOS
    A OpenSSL-backed libcurl with GSSAPI is required for custom handling
    of certificates and default credentials for web requests.
    This is rarely needed, but you can install it with
      brew install curl --with-openssl --with-gssapi
    See https://github.com/PowerShell/PowerShell/issues/5638
  EOS
end
