cask "manico" do
  version "3.6,474"
  sha256 "87fa41391693d07d9955117dad3f3741cd0732a96586b3636c122f23b3437f4e"

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
