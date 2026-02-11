cask "draw-things" do
  version "1.20260207.0-ca5be5b9"
  sha256 "ca5be5b939c6bdff88a5d7e6489b1b4a65b9a7e8f2d67006a04a32b67c22887c"

  url "https://static.drawthings.ai/DrawThings-#{version}.zip"
  name "Draw Things"
  desc "Run Stable Diffusion locally"
  homepage "https://drawthings.ai/"

  livecheck do
    url "https://drawthings.ai/downloads/"
    regex(/href=.*?DrawThings[._-]v?(\d+(?:\.\d+)+(?:-\h+)?)\.zip/i)
  end

  depends_on macos: ">= :monterey"

  app "Draw Things.app"

  zap trash: [
    "~/Library/Application Scripts/com.liuliu.draw-things",
    "~/Library/Containers/com.liuliu.draw-things",
  ]
end
