cask 'dbeaver-community' do
  version '4.0.3'
  sha256 '6324a964024653241ba41a25b2415a2c67ddeb8e4892740b6d78a3907207094d'

  # github.com/serge-rider/dbeaver was verified as official when first introduced to the cask
  url "https://github.com/serge-rider/dbeaver/releases/download/#{version}/dbeaver-ce-#{version}-macos.dmg"
  appcast 'https://github.com/serge-rider/dbeaver/releases.atom',
          checkpoint: '15b3eb893d99309501e278bc76741e27d078d82e523e346b2f3d101595f26e87'
  name 'DBeaver Community Edition'
  homepage 'http://dbeaver.jkiss.org/'

  app 'DBeaver.app'
end
