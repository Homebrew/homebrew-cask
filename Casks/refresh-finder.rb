class RefreshFinder < Cask
  version '1.5.0'
  sha256 'd7e5faec85b3910776ca77f09c98b1b90e540cc3d493853e46eaeb8c7332472e'

  url 'http://soderhavet.com/refresh/Refresh_Finder_1.5.0.dmg.zip'
  homepage 'http://soderhavet.com/refresh/refresh-finder/'

  nested_container 'Refresh_Finder_1.5.0.dmg'
  link 'Refresh Finder.app'
end
