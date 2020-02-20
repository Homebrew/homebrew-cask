cask 'isabelle' do
  version '2019'
  sha256 'a422bc02a985182440eff0943735db8c9ae4b67190ed47d08c8d968385179a80'

  url "https://www.cl.cam.ac.uk/research/hvg/Isabelle/dist/Isabelle#{version}_macos.tar.gz"
  appcast 'https://mirror.cse.unsw.edu.au/pub/isabelle/dist/'
  name 'Isabelle'
  homepage 'https://www.cl.cam.ac.uk/research/hvg/Isabelle/'

  app "Isabelle#{version}.app"
end
