class ElmPlatform < Cask
  version '0.12.3'
  sha256 '155569928a868095b2b27e705f2904496918f28fcb59990ff4449ca4aace330f'

  url 'https://dl.dropboxusercontent.com/s/qfz9n90jszcxa5q/Elm-Platform-0.12.3.pkg'
  homepage 'http://www.elm-lang.org'

  install 'Elm-Platform-0.12.3.pkg'
  uninstall :pkgutil => [
                         'org.elm-lang.bin.pkg',
                         'org.elm-lang.share.pkg'
                        ]
end
