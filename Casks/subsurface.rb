cask "subsurface" do
  version "4.9.8"
  sha256 "9d42ceaf57b0268fa5912c38c26075753dd74cfb82a87118c0857e49c2f36ec7"

  url "https://subsurface-divelog.org/downloads/Subsurface-#{version}.dmg"
  appcast "https://subsurface-divelog.org/download/"
  name "Subsurface"
  homepage "https://subsurface-divelog.org/"

  app "Subsurface.app"
end
