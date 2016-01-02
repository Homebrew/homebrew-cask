cask 'aptanastudio' do
  version '3.6.1'
  sha256 '1eed9a94ce9b9bf03743f0bfdc5efd752b3470842170ba571ee25d2810c3c8f0'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/aptana/studio3/releases/download/v#{version}/Aptana_Studio_3_Setup_#{version}.dmg"
  appcast 'https://github.com/aptana/studio3/releases.atom',
          :sha256 => '795dbb0123a994485eb2211e45340e23ceca4a7454ad68404758858310d9fa8a'
  name 'Aptana Studio'
  homepage 'http://www.aptana.com/'
  license :gpl

  app 'Aptana Studio 3/AptanaStudio3.app'
end
