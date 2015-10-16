cask :v1 => 'elm-platform' do
  version '0.15.1'
  sha256 'd816b3ada89f533dd4074694e8c84ec6ab4ee421bb37b929d6e71325607dfca4'

  url "http://install.elm-lang.org/Elm-Platform-#{version}.pkg"
  name 'Elm'
  homepage 'http://www.elm-lang.org'
  license :bsd

  pkg "Elm-Platform-#{version}.pkg"

  uninstall :pkgutil => 'org.elm-lang.*',
            :delete => '/usr/local/share/elm'
end
