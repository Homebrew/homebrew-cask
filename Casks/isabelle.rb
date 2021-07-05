cask "isabelle" do
  version "2021"
  sha256 "3540cb7e21128696972a0c44f12d39b548cc85f49458ef19f3dddfaaa7a858b0"

  url "https://www.cl.cam.ac.uk/research/hvg/Isabelle/dist/Isabelle#{version}_macos.tar.gz"
  name "Isabelle"
  desc "Generic proof assistant"
  homepage "https://www.cl.cam.ac.uk/research/hvg/Isabelle/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(%r{href=.*?/Isabelle(\d+(?:\.\d+)*)_macos\.tar\.gz}i)
  end

  app "Isabelle#{version}.app"
  binary "#{appdir}/Isabelle#{version}.app/bin/isabelle"
end
