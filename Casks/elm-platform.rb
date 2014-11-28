cask :v1 => 'elm-platform' do
  version '0.13'
  sha256 '9f2a6446fdb1fad1536ec2ddce36a678265fe5b1112ca3edc992c07eebac1e62'

  url "http://install.elm-lang.org/Elm-Platform-#{version}.pkg"
  homepage 'http://www.elm-lang.org'
  license :bsd

  pkg "Elm-Platform-#{version}.pkg"

  uninstall :pkgutil => 'org.elm-lang.*',
            :delete => '/usr/local/share/elm'
end
