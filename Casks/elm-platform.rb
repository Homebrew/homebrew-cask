cask :v1 => 'elm-platform' do
  version '0.15.1'
  sha256 '09ad994a33215d954042c5917423eec0e2adbd6015dd6dd9ef571d5d7af9bf2b'

  url "http://install.elm-lang.org/Elm-Platform-#{version}.pkg"
  name 'Elm'
  homepage 'http://www.elm-lang.org'
  license :bsd

  pkg "Elm-Platform-#{version}.pkg"

  uninstall :pkgutil => 'org.elm-lang.*',
            :delete => '/usr/local/share/elm'
end
