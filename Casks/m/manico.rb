cask "manico" do
  version "3.9.1,499"
  sha256 "ab20452ef23cdb0efec6672ed85fe5550b976c6a3389ec95e40fc74192068594"

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
