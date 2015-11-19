cask :v1 => 'elm-platform' do
  version '0.16'
  sha256 '9b36a60c09184037f87c7e63c219d0ecb9bdf98051f0899a36a89172289c53eb'

  url "http://install.elm-lang.org/Elm-Platform-#{version}.pkg"
  name 'Elm'
  homepage 'http://www.elm-lang.org'
  license :bsd

  pkg "Elm-Platform-#{version}.pkg"

  uninstall :pkgutil => 'org.elm-lang.*',
            :delete => '/usr/local/share/elm'
end
