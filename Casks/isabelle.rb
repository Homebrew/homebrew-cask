cask "isabelle" do
  version "2020"
  sha256 "bd0353ee15b9371729e94548c849864d14531eb2e9125fde48122b4da32bd9e9"

  url "https://www.cl.cam.ac.uk/research/hvg/Isabelle/dist/Isabelle#{version}_macos.tar.gz"
  appcast "https://mirror.cse.unsw.edu.au/pub/isabelle/dist/"
  name "Isabelle"
  homepage "https://www.cl.cam.ac.uk/research/hvg/Isabelle/"

  app "Isabelle#{version}.app"
end
