cask :v1 => 'coqide' do
  version '8.4pl4'
  sha256 'b476b95b60940f347f515decf4e5d4d35499ffa5080df9027395b47c9561b9b0'

  url "http://coq.inria.fr/distrib/V#{version}/files/coqide-#{version}.dmg"
  homepage 'http://coq.inria.fr/'
  license :oss

  app "CoqIde_#{version}.app"
end
