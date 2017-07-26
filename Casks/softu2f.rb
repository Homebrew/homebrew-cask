cask 'softu2f' do
  version '0.0.11'
  sha256 'bc47d9283fb997ebce2dee6b4e5b1f21d38db37f34bbbf7a962da99d3f62439e'

  url "https://github.com/github/SoftU2F/releases/download/#{version}/SoftU2F.pkg"
  appcast 'https://github.com/github/SoftU2F/releases.atom',
          checkpoint: 'f303ba212e38f75d5fcfe0eb998407c793c000253cbb05f89fe6ee1c2c983fb0'
  name 'Soft U2F'
  homepage 'https://github.com/github/SoftU2F'

  pkg 'SoftU2F.pkg'

  uninstall launchctl: 'com.github.SoftU2F',
            kext:      'com.github.SoftU2FDriver',
            pkgutil:   'com.GitHub.SoftU2F'
end
