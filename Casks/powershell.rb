cask 'powershell' do
  version '6.0.0-beta.1'
  sha256 '8ed67321503a22e9c4442c588fc014aa61698e12ad389b7a8c38c98fab9206d1'

  # github.com/PowerShell/PowerShell was verified as official when first introduced to the cask
  url "https://github.com/PowerShell/PowerShell/releases/download/v#{version}/powershell-#{version}-osx.10.12-x64.pkg"
  appcast 'https://github.com/PowerShell/PowerShell/releases.atom',
          checkpoint: '1eaf1870d2fa7c41da74a3f550876acd8972f4d9156f904a13a36d4c6b5ac53d'
  name 'PowerShell'
  homepage 'https://msdn.microsoft.com/powershell'

  depends_on formula: 'openssl'

  pkg "powershell-#{version}-osx.10.12-x64.pkg"

  uninstall pkgutil: 'powershell'

  zap delete: [
                '~/.cache/powershell',
                '~/.config/PowerShell',
                '~/.local/share/powershell',
              ],
      rmdir:  [
                '~/.cache',
                '~/.config',
                '~/.local/share',
                '~/.local',
              ]

  caveats <<-EOS.undent
    A OpenSSL-backed libcurl is required for custom handling of certificates.
    This is rarely needed, but you can install it with
      brew install curl --with-openssl
    See https://github.com/PowerShell/PowerShell/issues/2211
  EOS
end
