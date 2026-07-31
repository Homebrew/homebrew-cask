cask "comfy" do
  version "1.0.34,26073189m0nnl4u"
  sha256 "c0b40e271e9edbb80a4287c16c996b512f95b1f18c1801d3208ad45d8b0d3c7f"

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
