cask 'softu2f' do
  version '0.0.9'
  sha256 '6166e5761ac5aa4375b8094032aee73764c1f14ee72ce01993003ad7433617c6'

  url "https://github.com/github/SoftU2F/releases/download/#{version}/SoftU2F.pkg"
  appcast 'https://github.com/github/SoftU2F/releases.atom',
          checkpoint: '4dee11cfe7c950f47c3c18326c91ea961d4bc2ca4de1f02da74c382b8d3da643'
  name 'Soft U2F'
  homepage 'https://github.com/github/SoftU2F'

  pkg 'SoftU2F.pkg'

  uninstall launchctl: 'com.github.SoftU2F',
            kext:      'com.github.SoftU2FDriver',
            pkgutil:   'com.GitHub.SoftU2F'
end
