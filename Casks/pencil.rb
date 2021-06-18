cask "pencil" do
  version "3.1.0"
  sha256 "5369787a801a470179a86ba60407b33e647f826b1a8b001b62e4f81a6bb0629d"

  url "https://pencil.evolus.vn/dl/V#{version}.ga/Pencil-#{version}.ga.dmg"
  name "Pencil"
  name "The Pencil Project"
  homepage "https://pencil.evolus.vn/"

  livecheck do
    url "https://github.com/evolus/pencil/releases"
    strategy :github_latest
  end

  app "Pencil.app"
end
