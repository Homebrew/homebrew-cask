cask 'powershell' do
  version '6.0.0'
  sha256 '396bbb5907fd0ec0bdfbfe0bf01961b52b4f1f1ceddc95467dd9ecd4fa5281df'

  url "https://github.com/PowerShell/PowerShell/releases/download/v#{version}/powershell-#{version}-osx.10.12-x64.pkg"
  appcast 'https://github.com/PowerShell/PowerShell/releases.atom',
          checkpoint: '339de99aebfd66bc07b2bb82fed802c3a37af3af480d47c2b5d1162f43350fba'
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
