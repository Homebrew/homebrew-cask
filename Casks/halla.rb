cask 'halla' do
  version '0.6.2'
  sha256 :no_check

  url "https://github.com/rstacruz/halla/releases/download/v#{version}/halla-osx.zip"
  appcast 'https://github.com/rstacruz/halla/releases.atom',
          checkpoint: '44182d9e902fc0c5577758b119167e50829a253b2a12b504c5cba372694d3094'
  name 'Halla'
  homepage 'https://github.com/rstacruz/halla'
  license :mit

  app 'Halla.app'

  caveats 'See https://github.com/rstacruz/halla/blob/master/README.md on creating your ~/.hallarc'
end
