cask 'softu2f' do
  version '0.0.12'
  sha256 'e623267e05cf7b9c718a0c01bf2dddcb716c64d858ca4c7520fcd14b9bc98b2b'

  url "https://github.com/github/SoftU2F/releases/download/#{version}/SoftU2F.pkg"
  appcast 'https://github.com/github/SoftU2F/releases.atom',
          checkpoint: 'eca9af882726480727b9e7cbc6384a361eecd7d1e46a54709af2c20f84443ae4'
  name 'Soft U2F'
  homepage 'https://github.com/github/SoftU2F'

  pkg 'SoftU2F.pkg'

  uninstall launchctl: 'com.github.SoftU2F',
            kext:      'com.github.SoftU2FDriver',
            pkgutil:   'com.GitHub.SoftU2F'
end
