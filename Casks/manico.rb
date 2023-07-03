cask "manico" do
  version "3.4,457"
  sha256 "8a3acc6ceddb2a64d7abfa804b31b083943507321d75f9997461c1ca50330416"

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
