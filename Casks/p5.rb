class P5 < Cask
  version '0.1.8'
  sha256 '3a46a98995b43e792d7e7f7407aba1503084cf37339064711abcfad54dd5c094'

  url "https://github.com/antiboredom/jside/releases/download/v#{version}/p5.zip"
  homepage 'http://p5js.org/download/#editor'

  app 'p5.app'
end
