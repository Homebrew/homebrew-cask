cask "invoko" do
  version "0.2.2,72"
  sha256 "d842e0eb6f340e92b25f41e3287e8b95113f2a11b6b56e7c83b95cb7fbc5bec4"

  url "https://download.invoko.ai/macapp/release/Invoko-#{version.csv.first}-#{version.csv.second}-silicon.dmg"
  name "Invoko"
  desc "AI helper for your screen"
  homepage "https://invoko.ai/"

  livecheck do
    url "https://download.invoko.ai/macapp/release/appcast.xml"
    strategy :sparkle do |item|
      "#{item.short_version},#{item.version}"
    end
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Invoko.app"

  uninstall quit: "com.tryclico.invoko"

  zap trash: [
    "~/Library/Application Support/Invoko",
    "~/Library/Caches/com.tryclico.invoko",
    "~/Library/HTTPStorages/com.tryclico.invoko",
    "~/Library/Preferences/com.tryclico.invoko.plist",
    "~/Library/Saved Application State/com.tryclico.invoko.savedState",
  ]
end
