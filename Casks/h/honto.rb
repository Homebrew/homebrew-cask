cask "honto" do
  version "6.62.0,20231121"
  sha256 :no_check

  url "https://dl.honto.jp/macapp/honto.dmg"
  name "honto view app"
  name "hontoビューアアプリ"
  desc "Ebook reader for the honto store"
  homepage "https://honto.jp/ebook/dlinfo.html"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: ">= :mojave"

  app "honto.app"

  caveats do
    requires_rosetta
  end
end
