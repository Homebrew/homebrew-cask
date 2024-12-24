cask "manico" do
  version "3.7,479"
  sha256 "fde1ee724302fe6c15f59d9052645aa53139905227be7f1ba8aa7e186ca4c2e2"

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
