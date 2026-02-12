cask "comfyui" do
  version "0.8.4,260211dbsdpzd9r"
  sha256 "e9f84e6a621ec032962267034c5afb43834ecdc6b4db70437986211325665f35"

  url "https://download.todesktop.com/241012ess7yxs0e/ComfyUI%20#{version.csv.first}%20-%20Build%20#{version.csv.second}-arm64-mac.zip",
      verified: "download.todesktop.com/241012ess7yxs0e/"
  name "ComfyUI"
  desc "Node-based image, video and audio generator"
  homepage "https://www.comfy.org/"

  livecheck do
    url "https://download.todesktop.com/241012ess7yxs0e/latest-mac.yml"
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
  depends_on macos: ">= :big_sur"

  app "ComfyUI.app"

  zap trash: [
    "~/Library/Application Support/ComfyUI",
    "~/Library/Logs/ComfyUI",
  ]
end
