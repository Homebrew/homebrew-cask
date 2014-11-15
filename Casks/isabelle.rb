cask :v1 => 'isabelle' do
  version '2014'
  sha256 'e4a4b5f454d6cb24d5ef7271adc54e9fa7109addda8c6707bd7414b4d4061a23'

  url "http://www.cl.cam.ac.uk/research/hvg/Isabelle/dist/Isabelle#{version}.dmg"
  homepage 'http://www.cl.cam.ac.uk/research/hvg/Isabelle/'
  license :bsd

  app "Isabelle#{version}.app"
end
