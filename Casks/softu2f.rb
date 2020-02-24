cask 'softu2f' do
  version '0.0.20'
  sha256 '6bd4ce9e88102660cef01bd7bc49e4a07c08e29d6367ce209a7eccc5bb8fb5c9'

  url "https://github.com/github/SoftU2F/releases/download/#{version}/SoftU2F.pkg"
  appcast 'https://github.com/github/SoftU2F/releases.atom'
  name 'Soft U2F'
  homepage 'https://github.com/github/SoftU2F'

  depends_on macos: '>= :sierra'

  pkg 'SoftU2F.pkg'

  uninstall launchctl: 'com.github.SoftU2F',
            kext:      'com.github.SoftU2FDriver',
            pkgutil:   'com.GitHub.SoftU2F'
end
