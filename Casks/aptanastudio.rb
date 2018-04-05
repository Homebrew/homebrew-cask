cask 'aptanastudio' do
  version '3.6.1'
  sha256 '0d7ea3079822b26105e74d27d8a64bb138f5ab57705f6451a67432190c0697d8'

  # github.com/aptana/studio3 was verified as official when first introduced to the cask
  url "https://github.com/aptana/studio3/releases/download/v#{version}/Aptana_Studio_#{version}_Setup.dmg"
  appcast "https://github.com/aptana/studio#{version.major}/releases.atom",
          checkpoint: 'b5c873d8167e9460ca864629759e4343962029042edd29a46297ce46167a8eef'
  name 'Aptana Studio'
  homepage 'http://www.aptana.com/'

  app "Aptana Studio #{version.major}/AptanaStudio#{version.major}.app"
end
