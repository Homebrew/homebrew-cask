cask 'deco' do
  version '0.7.1'
  sha256 'cd9d9b553d9fcb706bacba94cbbf7ec80a77609f5505d485b2ebad7c16a8ffba'

  # github.com/decosoftware/deco-ide was verified as official when first introduced to the cask
  url "https://github.com/decosoftware/deco-ide/releases/download/v#{version}/Deco-#{version}.pkg"
  appcast 'https://github.com/decosoftware/deco-ide/releases.atom',
          checkpoint: '73af73291153644892e7f1b2b91126a6cfc0634cc12f49da6452c90432dc4408'
  name 'Deco'
  homepage 'https://www.decosoftware.com/'

  # pkg cannot be installed automatically and the .zip of the `app` has errors
  installer manual: "Deco-#{version}.pkg"

  uninstall pkgutil: 'com.decosoftware.Deco'

  zap trash: [
               '~/.Deco',
               '~/Library/Application Support/com.decosoftware.Deco',
             ]
end
