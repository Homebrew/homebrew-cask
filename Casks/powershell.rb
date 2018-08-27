cask 'powershell' do
  version '6.0.4'
  sha256 '0c59ff0fcacc957342012f44fcb8db255fd05babd081455edb2648566e2b29cc'

  url "https://github.com/PowerShell/PowerShell/releases/download/v#{version}/powershell-#{version}-osx.10.12-x64.pkg"
  appcast 'https://github.com/PowerShell/PowerShell/releases.atom'
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
