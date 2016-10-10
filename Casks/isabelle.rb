cask 'isabelle' do
  version '2016'
  sha256 '3c9a3659d4f7b8f5429e2216efc0c7065288c7b8c7a0e0224450142619705c71'

  url "https://www.cl.cam.ac.uk/research/hvg/Isabelle/dist/Isabelle#{version}.dmg"
  name 'Isabelle'
  homepage 'https://www.cl.cam.ac.uk/research/hvg/Isabelle/'

  app "Isabelle#{version}.app"
end
