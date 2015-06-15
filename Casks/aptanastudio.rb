cask :v1 => 'aptanastudio' do
  version '3.6.1'
  sha256 '1eed9a94ce9b9bf03743f0bfdc5efd752b3470842170ba571ee25d2810c3c8f0'
  url "https://github.com/aptana/studio3/releases/download/v#{version}/Aptana_Studio_3_Setup_#{version}.dmg"
  name 'Aptana Studio'
  homepage 'http://www.aptana.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Aptana Studio 3/AptanaStudio3.app'
end
