class Racket < Cask
  version '6.1'
  sha256 'b7f12dcc2d60770e7da7e8268d4ac46db2c666302cd5472d414d5b4b30cd529b'

  url "http://mirror.racket-lang.org/installers/#{version}/racket-#{version}-x86_64-macosx.dmg"
  homepage 'http://racket-lang.org/'

  link "Racket v#{version}"
end
