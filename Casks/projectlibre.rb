cask :v1 => 'projectlibre' do
  version '1.5.8'
  sha256 'efd7d228d2e71a2a5af185d2fe1ddcea4abc55af32188344e06e1871facd0c6b'

  url "https://downloads.sourceforge.net/project/projectlibre/ProjectLibre/#{version}/projectlibre-#{version}.dmg"
  homepage 'http://www.projectlibre.org/'
  license :oss

  app 'ProjectLibre.app'
end
