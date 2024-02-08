cask "hakuneko" do
  version "6.1.7"
  sha256 "5ee455ce2f9bcebdf598182dccb46dbf66637d78920fce6267b30e7db170f987"

  url "https://github.com/manga-download/hakuneko/releases/download/v#{version}/hakuneko-desktop_#{version}_macos_amd64.dmg",
      verified: "github.com/manga-download/hakuneko/"
  name "HakuNeko"
  desc "Manga and anime downloader and reader"
  homepage "https://hakuneko.download/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "HakuNeko Desktop.app"

  zap trash: [
    "~/Library/Application Support/hakuneko-desktop",
    "~/Library/Preferences/https:/git.io/hakuneko.plist",
  ]

  caveats do
    requires_rosetta
  end
end
