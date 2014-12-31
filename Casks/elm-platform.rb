cask :v1 => 'elm-platform' do
  version '0.14'
  sha256 '8d15ddb9d7b09767a5279b6b68e953af2e268f4652668ee3d893c8e96ddcd861'

  url "http://install.elm-lang.org/Elm-Platform-#{version}.pkg"
  homepage 'http://www.elm-lang.org'
  license :bsd

  pkg "Elm-Platform-#{version}.pkg"

  uninstall :pkgutil => 'org.elm-lang.*',
            :delete => '/usr/local/share/elm'
end
