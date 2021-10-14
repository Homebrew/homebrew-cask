cask "manico" do
  version "2.9.4,414"
  sha256 "e765398d5d7fc6413ed2e8fd9df181e95bb092bfa1770e9d7a6a92fe92ba1ff7"

  url "https://manico.im/api/release_manager/downloads/im.manico.Manico/#{version.after_comma}.zip"
  name "Manico"
  desc "App launcher and switcher"
  homepage "https://manico.im/"

  livecheck do
    url "https://manico.im/api/release_manager/im.manico.Manico.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :sierra"

  app "Manico.app"

  zap trash: "~/Library/Containers/im.manico.Manico"
end
