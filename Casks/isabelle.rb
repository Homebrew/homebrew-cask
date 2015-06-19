cask :v1 => 'isabelle' do
  version '2015'
  sha256 '350ed097785edb35bb653510a9021e90983b06cd94899093e7c3e6c0300815ee'

  url "http://www.cl.cam.ac.uk/research/hvg/Isabelle/dist/Isabelle#{version}.dmg"
  name 'Isabelle'
  homepage 'http://www.cl.cam.ac.uk/research/hvg/Isabelle/'
  license :bsd

  app "Isabelle#{version}.app"
end
