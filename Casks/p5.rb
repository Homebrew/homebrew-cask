class P5 < Cask
  version '0.1.7'
  sha256 'bfd0e30648d64388877c3e29255fcaa3a58404b47b22879174952846fbefd9e8'

  url "https://github.com/antiboredom/jside/releases/download/v#{version}/p5.zip"
  homepage 'http://p5js.org/download/#editor'

  app 'p5.app'
end
