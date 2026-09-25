cask "comfy" do
  version "1.1.3,260925phvzmrjn6"
  sha256 "be775df9e6c0d34c99d31f8ea67f7d5510ec5bfbf0b64ba4f93dea3819420eb9"

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
