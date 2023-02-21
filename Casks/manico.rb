cask "manico" do
  version "3.3,454"
  sha256 "a29e25c3eeb78a0b374f341c10b14a0dcbe6056b055b61ad09ecb3d2b5f8bdeb"

  url "https://manico.im/api/release_manager/downloads/im.manico.Manico/#{version.csv.second}.zip"
  name "Manico"
  desc "App launcher and switcher"
  homepage "https://manico.im/"

  livecheck do
    url "https://manico.im/api/release_manager/im.manico.Manico.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :big_sur"

  app "Manico.app"

  zap trash: "~/Library/Containers/im.manico.Manico"
end
