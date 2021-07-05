cask "manico" do
  version "2.9.2,410"
  sha256 "13c8e81cc809912f3201f7c55a915c07cf323b411be52e43a9494ee79d2f4c45"

  url "https://manico.im/api/release_manager/downloads/im.manico.Manico/#{version.after_comma}.zip"
  name "Manico"
  desc "App Launcher & Switcher"
  homepage "https://manico.im/"

  livecheck do
    url "https://manico.im/api/release_manager/im.manico.Manico.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :sierra"

  app "Manico.app"

  zap trash: [
    "~/Library/Containers/im.manico.Manico",
  ]
end
