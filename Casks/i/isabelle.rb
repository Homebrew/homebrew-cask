cask "isabelle" do
  version "2025-2"
  sha256 "8f187496e295f169952e944745af9e4ae00c9c1cd2ed4cadbcf7d898e444913e"

  url "https://www.cl.cam.ac.uk/research/hvg/Isabelle/dist/Isabelle#{version}_macos.tar.gz"
  name "Isabelle"
  desc "Generic proof assistant"
  homepage "https://www.cl.cam.ac.uk/research/hvg/Isabelle/"

  livecheck do
    url :homepage
    regex(/href=.*?Isabelle[._-]?v?(\d+(?:[.-]\d+)*)[._-]macos\.t/i)
  end

  binary "#{appdir}/Isabelle#{version}.app/bin/isabelle"
  artifact "Isabelle#{version}.app", target: "#{appdir}/Isabelle#{version}.app"

  # No zap stanza required
end
