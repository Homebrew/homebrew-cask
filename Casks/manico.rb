cask "manico" do
  version "2.10.1,418"
  sha256 "e2a2a654ba31a55003be70ab3338336933b0b7bcc1448587962132747f5643e7"

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
