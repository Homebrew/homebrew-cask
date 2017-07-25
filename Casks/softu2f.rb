cask 'softu2f' do
  version '0.0.8'
  sha256 '3eaa6f1ca48cfde4461424a22e41d8e24c35dc3601fbadeb94e1d9134a7d11a9'

  url "https://github.com/github/SoftU2F/releases/download/#{version}/SoftU2F.pkg"
  appcast 'https://github.com/github/SoftU2F/releases.atom',
          checkpoint: '7be8df9f6dd19bad2d014ea14896d3990536243ac44cb695e277e3af8ee8a3d4'
  name 'Soft U2F'
  homepage 'https://github.com/github/SoftU2F'

  pkg 'SoftU2F.pkg'

  uninstall launchctl: 'com.github.SoftU2F',
            kext:      'com.github.SoftU2FDriver',
            pkgutil:   'com.GitHub.SoftU2F'
end
