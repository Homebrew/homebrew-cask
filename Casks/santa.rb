cask 'santa' do
  version '0.9.17'
  sha256 '2dfbd6527c07f98e03ddd93da150c95f39ef3461233af371b8da7f1f571016ce'

  url "https://github.com/google/santa/releases/download/#{version}/santa-#{version}.dmg"
  appcast 'https://github.com/google/santa/releases.atom',
          checkpoint: '0b2a380e4831dbfce79d3e1512b9650aa9240ee3f22a361c2ee2caa39fd01b33'
  name 'Santa'
  homepage 'https://github.com/google/santa'

  pkg "santa-#{version}.pkg"

  uninstall kext:      'com.google.santa-driver',
            launchctl: ['com.google.santad', 'com.google.santagui'],
            pkgutil:   'com.google.santa'
end
