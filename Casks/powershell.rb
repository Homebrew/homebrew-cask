cask 'powershell' do
  version '6.0.0'
  sha256 '74c4d1ba68958df7630327c3ea0c3b9c40181fd748b82738b54941a6863e3859'

  url "https://github.com/PowerShell/PowerShell/releases/download/v#{version}/powershell-#{version}-osx.10.12-x64.pkg"
  appcast 'https://github.com/PowerShell/PowerShell/releases.atom',
          checkpoint: '55056d894283db7a07b0aa5b90011dc85b6f90cef094bdc53b0c273336faf737'
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
