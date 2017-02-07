cask 'powershell' do
  version '6.0.0-alpha.15'
  sha256 '222807166c5310b7d2a5862012fafe39793aa7876f1c712d64551bbf48c83110'

  # github.com/PowerShell/PowerShell was verified as official when first introduced to the cask
  url "https://github.com/PowerShell/PowerShell/releases/download/v#{version}/powershell-#{version}.pkg"
  appcast 'https://github.com/PowerShell/PowerShell/releases.atom',
          checkpoint: '9800586f8fb3d6772a73f3308af522ed08e97d0863b6b09cb3598f37ed98b690'
  name 'PowerShell'
  homepage 'https://msdn.microsoft.com/powershell'

  depends_on formula: 'openssl'

  pkg "powershell-#{version}.pkg"

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
