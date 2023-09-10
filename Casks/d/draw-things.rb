cask "draw-things" do
  version "1.20230901.1-f9ec4c94"
  sha256 "f9ec4c940931d01c747c04beb421792616a765ee87a87846c17bd110dc0fba8e"

  url "https://static.drawthings.ai/DrawThings-#{version}.zip"
  name "Draw Things"
  desc "Run Stable Diffusion locally"
  homepage "https://drawthings.ai/"

  livecheck do
    url :homepage
    regex(/href=.*?DrawThings[._-]v?(\d+(?:\.\d+)+(?:-[\da-f]*)?)\.zip/i)
  end

  app "Draw Things.app"

  zap trash: [
    "~/Library/Application Scripts/com.liuliu.draw-things",
    "~/Library/Containers/com.liuliu.draw-things",
  ]
end
