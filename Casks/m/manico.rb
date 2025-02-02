cask "manico" do
  version "3.8,494"
  sha256 "cd6affef08b27addd954964f3b606810da3313f5e624b81562959d7b3438364a"

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
