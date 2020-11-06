cask "hakuneko" do
  version "6.1.7"
  sha256 "5ee455ce2f9bcebdf598182dccb46dbf66637d78920fce6267b30e7db170f987"

  url "https://github.com/manga-download/hakuneko/releases/download/v#{version}/hakuneko-desktop_#{version}_macos_amd64.dmg"
  appcast "https://github.com/manga-download/hakuneko/releases.atom"
  name "HakuNeko"
  homepage "https://github.com/manga-download/hakuneko"

  app "HakuNeko Desktop.app"
end
