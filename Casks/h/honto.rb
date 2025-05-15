cask "honto" do
  version "6.70.0"
  sha256 :no_check

  url "https://dl.honto.jp/macapp/honto.dmg"
  name "honto view app"
  name "hontoビューアアプリ"
  desc "Ebook reader for the honto store"
  homepage "https://honto.jp/ebook/dlinfo.html"

  livecheck do
    url "https://honto.jp/view_interface.php?blockId=9257819"
    regex(%r{Mac\s*<br\s*/?>\s*Ver[._-]v?(\d+(?:\.\d+)+)}i)
  end

  depends_on macos: ">= :mojave"

  app "honto.app"

  zap trash: [
    "~/Library/Application Scripts/jp.co.dnp.hontoformac",
    "~/Library/Containers/jp.co.dnp.hontoformac",
  ]

  caveats do
    requires_rosetta
  end
end
