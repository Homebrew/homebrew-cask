cask "isabelle" do
  version "2024"
  sha256 "22035f996f71ea1f03063f6f144195eb6a04974d4d916ed0772cd79569a28bc7"

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

  # No zap stanza required
end
