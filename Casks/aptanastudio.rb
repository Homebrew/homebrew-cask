cask 'aptanastudio' do
  version '3.6.1'
  sha256 '1eed9a94ce9b9bf03743f0bfdc5efd752b3470842170ba571ee25d2810c3c8f0'

  # github.com/aptana/studio3 was verified as official when first introduced to the cask
  url "https://github.com/aptana/studio3/releases/download/v#{version}/Aptana_Studio_3_Setup_#{version}.dmg"
  appcast "https://github.com/aptana/studio#{version.major}/releases.atom",
          checkpoint: 'cc90ca0284dca1d1f8b17ed4b3afd300154eda6c1648e7d9cd1a797f984fd32d'
  name 'Aptana Studio'
  homepage 'http://www.aptana.com/'

  app "Aptana Studio #{version.major}/AptanaStudio#{version.major}.app"
end
