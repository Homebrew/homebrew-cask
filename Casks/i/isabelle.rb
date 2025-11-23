cask "isabelle" do
  version "2025"
  sha256 "ea5754c228857f5d9d3ae254ec9814797f2453ea290df20b2f6dcb2ef0e2e7f8"

  url "https://www.cl.cam.ac.uk/research/hvg/Isabelle/dist/Isabelle#{version}_macos.tar.gz"
  name "Isabelle"
  desc "Generic proof assistant"
  homepage "https://www.cl.cam.ac.uk/research/hvg/Isabelle/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/Isabelle(\d+(?:\.\d+)*)_macos\.t}i)
  end

  binary "#{appdir}/Isabelle#{version}.app/bin/isabelle"
  artifact "Isabelle#{version}.app", target: "#{appdir}/Isabelle#{version}.app"

  # No zap stanza required
end
