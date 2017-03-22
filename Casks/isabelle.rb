cask 'isabelle' do
  version '2016-1'
  sha256 '99669bf27bff93be4f860993883848c49a007308ef69b363954a8c2feaa1a314'

  url "https://www.cl.cam.ac.uk/research/hvg/Isabelle/dist/Isabelle#{version}.dmg"
  name 'Isabelle'
  homepage 'https://www.cl.cam.ac.uk/research/hvg/Isabelle/'

  app "Isabelle#{version}.app"
end
