cask "manico" do
  version "3.0.3,430"
  sha256 "522cba47fdcbdf908c4d112b010778b41679e13d528730a91164d01015534ec9"

  url "https://manico.im/api/release_manager/downloads/im.manico.Manico/#{version.csv.second}.zip"
  name "Manico"
  desc "App launcher and switcher"
  homepage "https://manico.im/"

  livecheck do
    url "https://manico.im/api/release_manager/im.manico.Manico.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :mojave"

  app "Manico.app"

  zap trash: "~/Library/Containers/im.manico.Manico"
end
