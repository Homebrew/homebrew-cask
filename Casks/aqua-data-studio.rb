cask 'aqua-data-studio' do
  version '18.0.8'
  sha256 '4ec2bbb8b8ff86e35d449e94589c723e4c367a523d949bd6833991b7dc6b7376'

  url "http://www.aquafold.com/download/v#{version.major}.0.0/osx/ads-osx-#{version}.tar.gz"
  appcast 'http://www.aquafold.com/download/',
          checkpoint: 'fd0ba390df27eff956c67848e12b7d24a9560f964e95d78cd6a038401a2fdd6a'
  name 'Aquafold Aqua Data Studio'
  homepage 'http://www.aquafold.com/aquadatastudio.html'

  app 'Aqua Data Studio.app'
end
