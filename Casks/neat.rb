cask 'neat' do
  version '4.3.0.36'
  sha256 '4db396a5e9e6dbf1d03670830959fbba5753caeb77d279a60f6f251f376f3f1d'

  url "http://cdn.neatco.com/Neat-#{version}-Release.dmg"
  name 'Neat for Mac'
  homepage 'http://www.neat.com'
  license :gratis

  pkg 'Install Neat.pkg'

  uninstall :pkgutil => 'com.neat.pkg.NeatBall',
            :quit    => 'com.neatreceipts.nrm'
end
