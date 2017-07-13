cask 'powershell' do
  version '6.0.0-beta.4'
  sha256 '6644a4e7258fd3733cefbfaa40b21d2077ce953d487bf09bfd0e648d7580e647'

  # github.com/PowerShell/PowerShell was verified as official when first introduced to the cask
  url "https://github.com/PowerShell/PowerShell/releases/download/v#{version}/powershell-#{version}-osx.10.12-x64.pkg"
  appcast 'https://github.com/PowerShell/PowerShell/releases.atom',
          checkpoint: '96a673b2861c759ff68a66c4c982d7c4dc629ebbd781f3790497d6aeaebfbed5'
  name 'PowerShell'
  homepage 'https://msdn.microsoft.com/powershell'

  depends_on formula: 'openssl'
  depends_on macos: '>= :sierra'

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
