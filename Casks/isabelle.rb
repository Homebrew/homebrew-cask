cask "isabelle" do
  version "2022"
  sha256 "28444505089e1e88da5c659b3e9b68cf7a234fb8ad9fa74345beacb352cf042d"

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
