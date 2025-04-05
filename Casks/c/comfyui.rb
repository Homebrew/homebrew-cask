cask "comfyui" do
  version "0.4.32,25032275xkjjkm6"
  sha256 "7ab9ee80abc9f33acd91695246470f93058fe098b810a620ac53ac886ae9faf2"

  url "https://download.comfy.org/#{version.csv.second}/mac/dmg/arm64"
  name "ComfyUI"
  desc "Node-based image, video and audio generator"
  homepage "https://www.comfy.org/"

  livecheck do
    url "https://github.com/Comfy-Org/desktop/releases/latest"
    strategy :page_match do |page|
      version = page.match(%r{/tag/v?(\d+(?:\.\d+)+)}i)[1]
      identifier = page.match(%r{https://download\.comfy\.org/([^/]+)/mac/dmg/arm64}i)[1]
      "#{version},#{identifier}"
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "ComfyUI.app"

  zap trash: [
    "~/Library/Application Support/ComfyUI",
    "~/Library/Logs/ComfyUI",
  ]
end
