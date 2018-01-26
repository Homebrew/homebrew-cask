cask 'isabelle' do
  version '2017'
  sha256 'cb22a2a89142d1421726a08b2f6bbc96be41e3768e37191ddff18a13d3788fab'

  url "https://www.cl.cam.ac.uk/research/hvg/Isabelle/dist/Isabelle#{version}.dmg"
  appcast 'http://mirror.cse.unsw.edu.au/pub/isabelle/dist/',
          checkpoint: 'b34794ffb73c3b9dbcc5d7e7abfe8fd10c315953b8242aa5fd059d797cf9840b'
  name 'Isabelle'
  homepage 'https://www.cl.cam.ac.uk/research/hvg/Isabelle/'

  app "Isabelle#{version}.app"
end
