cask "comfyui" do
  version "0.4.70,250904rjq2tjr3u"
  sha256 "42e80f39312ac9c26225005e6c5780b9e85de2055bfea1000a7b990e9ddacc29"

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
  depends_on macos: ">= :catalina"

  app "ComfyUI.app"

  zap trash: [
    "~/Library/Application Support/ComfyUI",
    "~/Library/Logs/ComfyUI",
  ]
end
