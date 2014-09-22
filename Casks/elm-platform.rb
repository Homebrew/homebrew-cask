class ElmPlatform < Cask
  version '0.13'
  sha256 '98ec14efd54b19c9a90c9b9103d1fed4583df927abf6d3a618ef38a80b9a3d41'

  url "http://install.elm-lang.org/Elm-Platform-#{version}.pkg"
  homepage 'http://www.elm-lang.org'

  pkg "Elm-Platform-#{version}.pkg"
  uninstall :pkgutil => 'org.elm-lang.*',
            :delete => '/usr/local/share/elm'
end
