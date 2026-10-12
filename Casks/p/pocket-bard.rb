cask "pocket-bard" do
  arch arm: "aarch64", intel: "amd64"
  livecheck_arch = on_arch_conditional arm: "aarch64", intel: "amd64"

  version "3.2.0,240"
  sha256 arm:   "1c934eba8236156eaa3433bb84c054f950095695e57e7c61337facb05b0d7008",
         intel: "182b954af26c311fe0e918bc29da1a8613ff27f55af5bcc3d06015d4f6499749"

  url "https://downloads.pocketbard.app/desktop/channels/stable/pocketbard-#{version.csv.first}-#{version.csv.second}-mac-#{arch}.zip"
  name "Pocket Bard"
  desc "TTRPG ambient audio and sound effects"
  homepage "https://www.pocketbard.app/"

  livecheck do
    url "https://downloads.pocketbard.app/desktop/channels/stable/appcast-#{livecheck_arch}.rss"
    strategy :sparkle do |item|
      "#{item.short_version},#{item.version.split(".").last}"
    end
  end

  auto_updates true
  depends_on :macos

  app "Pocket Bard.app"

  zap trash: [
    "~/Library/Application Support/com.pocketbard.pocketbard",
    "~/Library/Caches/com.pocketbard.pocketbard",
    "~/Library/HTTPStorages/com.pocketbard.pocketbard",
    "~/Library/Preferences/com.pocketbard.pocketbard.plist",
  ]
end
