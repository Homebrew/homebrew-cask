cask 'powershell' do
  version '7.0.2'
  sha256 'f25aa06ce580ce5dd844d3dcfcdd335d56268e0fdd9f3944a303494bc5ee85dd'

  url "https://github.com/PowerShell/PowerShell/releases/download/v#{version}/powershell-#{version}-osx-x64.pkg"
  appcast 'https://github.com/PowerShell/PowerShell/releases.atom'
  name 'PowerShell'
  homepage 'https://github.com/PowerShell/PowerShell'

  depends_on macos: '>= :high_sierra'

  pkg "powershell-#{version}-osx-x64.pkg"

  uninstall pkgutil: 'com.microsoft.powershell'

  zap trash: [
               '~/.cache/powershell',
               '~/.config/PowerShell',
               '~/.local/share/powershell',
             ]

  caveats <<~EOS
    For faster updates use https://github.com/PowerShell/Homebrew-Tap#powershell-stable
  EOS
end
