cask :v1 => 'p5' do
  # note: "5" is not a version number, but an intrinsic part of the product name
  version '0.1.8'
  sha256 '3a46a98995b43e792d7e7f7407aba1503084cf37339064711abcfad54dd5c094'

  url "https://github.com/antiboredom/jside/releases/download/v#{version}/p5.zip"
  homepage 'http://p5js.org/download/#editor'
  license :mit

  app 'p5.app'
end
