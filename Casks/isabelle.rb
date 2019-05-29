cask 'isabelle' do
  version '2018'
  sha256 '25278984f186eed5b2a47d5b536a2589c565d33aba2b1849c074425e9cde964b'

  url "https://www.cl.cam.ac.uk/research/hvg/Isabelle/dist/Isabelle#{version}.dmg"
  appcast 'https://mirror.cse.unsw.edu.au/pub/isabelle/dist/'
  name 'Isabelle'
  homepage 'https://www.cl.cam.ac.uk/research/hvg/Isabelle/'

  app "Isabelle#{version}.app"
end
