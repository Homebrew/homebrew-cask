cask 'neat' do
  version '4.5.0.99'
  sha256 '84bc54c01a239997bf18b86347161bde0a94ed66c222fe9bb1e977f4df1e3cdb'

  url "http://www.neat.com/wp-content/uploads/helpcenter/software/Neat-#{version}.dmg"
  name 'Neat for Mac'
  homepage 'https://www.neat.com/'

  pkg 'Install Neat.pkg'

  uninstall pkgutil: 'com.neat.pkg.NeatBall',
            quit:    'com.neatreceipts.nrm'
end
