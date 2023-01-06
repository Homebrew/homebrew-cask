cask "manico" do
  version "3.2,446"
  sha256 "5cd7c1b30bd88863988c65ce2629ed597a8be27b198ee9e13c121179d2fd0537"

  url "https://manico.im/api/release_manager/downloads/im.manico.Manico/#{version.csv.second}.zip"
  name "Manico"
  desc "App launcher and switcher"
  homepage "https://manico.im/"

  livecheck do
    url "https://manico.im/api/release_manager/im.manico.Manico.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :catalina"

  app "Manico.app"

  zap trash: "~/Library/Containers/im.manico.Manico"
end
