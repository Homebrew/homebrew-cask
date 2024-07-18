cask "draw-things" do
  version "1.20240717.2-c9b9ec5a"
  sha256 "c9b9ec5ad55427e89e1fa7e64a810ff165ed9f4eeda95df9d250fd34f6dd5665"

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
