cask 'powershell' do
  version '6.0.0-alpha.12'
  sha256 'f990ba234d7fe0e017d53bc77382b28b7811f9e69f31a6ea1c13f97a69b67cdc'

  # github.com/PowerShell/PowerShell was verified as official when first introduced to the cask
  url "https://github.com/PowerShell/PowerShell/releases/download/v#{version}/powershell-#{version}.pkg"
  appcast 'https://github.com/PowerShell/PowerShell/releases.atom',
          checkpoint: '4fea5b9b5bfad008b99350428b5c355547dc2e9e03cd284752496f5fc2ecd600'
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
