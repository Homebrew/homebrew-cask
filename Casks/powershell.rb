cask 'powershell' do
  version '6.0.0-alpha.18'
  sha256 '486be09e5f20fbbbda8a1a35b3959630f805dc3d5ab1c1b77d7af3e2bd234d7b'

  # github.com/PowerShell/PowerShell was verified as official when first introduced to the cask
  url "https://github.com/PowerShell/PowerShell/releases/download/v#{version}/powershell-#{version}-osx.10.11-x64.pkg"
  appcast 'https://github.com/PowerShell/PowerShell/releases.atom',
          checkpoint: 'edd757730a98d4e41ea656cfa009ef80b2a3223f13dc745af633e3c850de1c4f'
  name 'PowerShell'
  homepage 'https://msdn.microsoft.com/powershell'

  depends_on formula: 'openssl'

  pkg "powershell-#{version}-osx.10.11-x64.pkg"

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
