cask "manico" do
  version "3.1,440"
  sha256 "dc79b8dff9e3522b47c85e5ffe049ccf16e938040e75e74326a49f89e3cbda4b"

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
