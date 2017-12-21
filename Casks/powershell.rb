cask 'powershell' do
  version '6.0.0-rc.2'
  sha256 'dd6c73c55cf34190cba7e9f955d70fa383c616b9a8e3db99a1e3167e5c646558'

  url "https://github.com/PowerShell/PowerShell/releases/download/v#{version}/powershell-#{version}-osx.10.12-x64.pkg"
  appcast 'https://github.com/PowerShell/PowerShell/releases.atom',
          checkpoint: '1045202e4de4f3e5a6f158be6e563ffaf1f8f10ac1952b812d49ade823f67a10'
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
