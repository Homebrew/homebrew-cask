cask "isabelle" do
  version "2025-1"
  sha256 "58a96bb173faa191f2e8d4da69062975db60136406841678b8a6a2eb576d435e"

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
