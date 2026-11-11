cask "plezy" do
  version "2.26.0"
  sha256 "0f58e9ff2d1025e35a6373655b91ec4429c1ff8faec28edf8b3934b51db04f0c"

  url "https://github.com/edde746/plezy/releases/download/#{version}/plezy-macos.dmg"
  name "Plezy"
  desc "Modern cross-platform media server client built with Flutter"
  homepage "https://plezy.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Plezy.app"

  zap trash: [
    "~/Library/Application Scripts/com.edde746.plezy",
    "~/Library/Application Support/com.edde746.plezy",
    "~/Library/Caches/com.edde746.plezy",
    "~/Library/Caches/SentryCrash/Plezy",
    "~/Library/Containers/com.edde746.plezy",
    "~/Library/HTTPStorages/com.edde746.plezy",
    "~/Library/Preferences/com.edde746.plezy.plist",
  ]
end
