cask "pencil" do
  version "3.1.0.ga"
  sha256 "5369787a801a470179a86ba60407b33e647f826b1a8b001b62e4f81a6bb0629d"

  url "https://pencil.evolus.vn/dl/V#{version}/Pencil-#{version}.dmg"
  appcast "https://github.com/evolus/pencil/releases.atom",
          must_contain: version.major_minor_patch
  name "Pencil"
  name "The Pencil Project"
  homepage "https://pencil.evolus.vn/"

  app "Pencil.app"
end
