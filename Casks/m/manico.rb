cask "manico" do
  version "3.9,498"
  sha256 "cc09e5ae7d726f142842a21e4cf9ec337e81538c9a558a1fe63e567c3d3f1dea"

  url "https://manico.im/api/release_manager/downloads/im.manico.Manico/#{version.csv.second}.zip"
  name "Manico"
  desc "App launcher and switcher"
  homepage "https://manico.im/"

  livecheck do
    url "https://manico.im/api/release_manager/im.manico.Manico.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :monterey"

  app "Manico.app"

  zap trash: "~/Library/Containers/im.manico.Manico"
end
