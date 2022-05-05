cask "isabelle" do
  version "2021-1"
  sha256 "6cf1ca71345f780890f8ab4032d87e5a4d1e7e0fecacfb510ffa02c777d23458"

  url "https://www.cl.cam.ac.uk/research/hvg/Isabelle/dist/Isabelle#{version}_macos.tar.gz"
  name "Isabelle"
  desc "Generic proof assistant"
  homepage "https://www.cl.cam.ac.uk/research/hvg/Isabelle/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/Isabelle(\d+(?:.\d+)*)_macos\.t}i)
  end

  app "Isabelle#{version}.app"
  binary "#{appdir}/Isabelle#{version}.app/bin/isabelle"
end
