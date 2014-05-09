class ElmPlatform < Cask
  url 'http://0726e2be3f48a1ed0f90-ec3c2a753a12d2be9f23ba16873acc23.r35.cf2.rackcdn.com/Elm-Platform-0.12.1.pkg'
  homepage 'http://www.elm-lang.org'
  version '0.12.1'
  sha256 'f20d3dfb221af5b31eeabf8f77f9828b37bf802d39448f2ae6cf6a01e839e1fc'
  install 'Elm-Platform-0.12.1.pkg'
  uninstall :pkgutil => [
                         'org.elm-lang.bin.pkg',
                         'org.elm-lang.share.pkg'
                        ]
end
