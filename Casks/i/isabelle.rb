cask "isabelle" do
  version "2023"
  sha256 "d15496d92ac7348dff938702099ef6e2bb976aaed6d4d08fb0bad7159f65d7f4"

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
