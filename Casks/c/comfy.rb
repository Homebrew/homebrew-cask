cask "comfy" do
  version "1.0.28,260629ddvgekhw1"
  sha256 "03100c3f1ea125a7e8a4c0fa46ba4ce433e6b9a3056c1de43d119b17e729f652"

  url "https://download.todesktop.com/241012ess7yxs0e/Comfy%20Desktop%20#{version.csv.first}%20-%20Build%20#{version.csv.second}-arm64-mac.zip",
      verified: "download.todesktop.com/241012ess7yxs0e/"
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
    "~/Library/Application Support/Comfy Desktop",
    "~/Library/Caches/com.todesktop.241012ess7yxs0e*",
    "~/Library/Caches/comfyui-desktop-2-updater",
    "~/Library/HTTPStorages/com.todesktop.241012ess7yxs0e",
    "~/Library/Preferences/ByHost/com.todesktop.241012ess7yxs0e*.plist",
    "~/Library/Preferences/com.todesktop.241012ess7yxs0e.plist",
  ]
end
