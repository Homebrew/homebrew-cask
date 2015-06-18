cask :v1 => 'staruml' do
  version '2.3.0'
  sha256 '52733c6bd89eb999bb028aaed6991bad55fcd76ecc3474de92d2e31d5207e1d1'

  url "http://staruml.io/download/release/v#{version}/StarUML-v#{version}.dmg"
  name 'StarUML'
  homepage 'http://staruml.io/'
  license :commercial

  app 'StarUML.app'
end
