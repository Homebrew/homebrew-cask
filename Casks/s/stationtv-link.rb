cask "stationtv-link" do
  version "1.1.1"
  sha256 "0254447381c1c41d797180ab373fb426c5143e8bf226d1c4ee09cfe0d19305d9"

  url "https://www.pixela.co.jp/products/tv_capture/stationtv_link/data/stationtvlink_#{version.no_dots}.dmg"
  name "StationTV® Link"
  desc "DVR and Media Server"
  homepage "https://www.pixela.co.jp/products/tv_capture/stationtv_link/"

  livecheck do
    url "https://www.pixela.co.jp/products/tv_capture/stationtv_link/support.html#download-mac"
    regex(/\[Ver\.(\d+(?:\.\d+)+)\]/i)
  end

  app "StationTV Link.app"

  caveats do
    requires_rosetta
  end
end
