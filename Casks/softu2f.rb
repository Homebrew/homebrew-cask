cask 'softu2f' do
  version '0.0.10'
  sha256 '73b3006f667f3c67e4208ce5a2b826698991116f6be273c7e5962f2293c911c3'

  url "https://github.com/github/SoftU2F/releases/download/#{version}/SoftU2F.pkg"
  appcast 'https://github.com/github/SoftU2F/releases.atom',
          checkpoint: 'ccddc49f472d2fb421d15002510265e24475309b98b28ca770388075c6412b3b'
  name 'Soft U2F'
  homepage 'https://github.com/github/SoftU2F'

  pkg 'SoftU2F.pkg'

  uninstall launchctl: 'com.github.SoftU2F',
            kext:      'com.github.SoftU2FDriver',
            pkgutil:   'com.GitHub.SoftU2F'
end
