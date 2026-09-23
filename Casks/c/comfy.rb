cask "comfy" do
  version "1.1.1,260923w9p0q7pda"
  sha256 "4f097f131b54f09ca9d4c4de72a3d892f8593003a3c59fcb0d6409423038a56a"

  url "https://download.todesktop.com/241012ess7yxs0e/Comfy%20Desktop%20#{version.csv.first}%20-%20Build%20#{version.csv.second}-arm64-mac.zip"
  name "Comfy Desktop"
  desc "Node-based image, video and audio generator"
  homepage "https://comfy.org/"

  livecheck do
    url "https://download.todesktop.com/241130tqe9q3y/latest-mac.yml"
    regex(/Build[ ._-]([^-]+)[._-]/i)
    strategy :electron_builder do |yaml, regex|
      yaml["files"]&.map do |item|
        match = item["url"]&.match(regex)
        next if match.blank?

        "#{yaml["version"]},#{match[1]}"
      end
    end
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :monterey

  app "Comfy Desktop.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.todesktop.241012ess7yxs0e.sfl*",
    "~/Library/Application Support/Comfy Desktop",
    "~/Library/Caches/com.todesktop.241012ess7yxs0e*",
    "~/Library/Caches/comfyui-desktop-2-updater",
    "~/Library/HTTPStorages/com.todesktop.241012ess7yxs0e",
    "~/Library/Logs/Comfy Desktop",
    "~/Library/Preferences/ByHost/com.todesktop.241012ess7yxs0e*.plist",
    "~/Library/Preferences/com.todesktop.241012ess7yxs0e.plist",
  ]
end
