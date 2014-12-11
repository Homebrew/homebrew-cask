cask :v1 => 'elm-platform' do
  version '0.14'
  sha256 'dec6255138eccd228402f6c50e5da297b161139e7c47a494c964df3f53ee56f6'

  url "http://install.elm-lang.org/Elm-Platform-#{version}.pkg"
  homepage 'http://www.elm-lang.org'
  license :bsd

  pkg "Elm-Platform-#{version}.pkg"

  uninstall :pkgutil => 'org.elm-lang.*',
            :delete => '/usr/local/share/elm'
end
