cask :v1 => 'refresh-finder' do
  version '1.5.0'
  sha256 'd7e5faec85b3910776ca77f09c98b1b90e540cc3d493853e46eaeb8c7332472e'

  url "http://soderhavet.com/refresh/Refresh_Finder_#{version}.dmg.zip"
  homepage 'http://soderhavet.com/refresh/refresh-finder/'
  license :unknown    # todo: improve this machine-generated value

  container :nested => "Refresh_Finder_#{version}.dmg"
  app 'Refresh Finder.app'
end
