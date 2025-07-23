cask "draw-things" do
  version "1.20250722.1-36abe36f"
  sha256 "36abe36f18b234987d6131bcce678e2613754ec72419d676a62ad4783bf3681b"

  url "https://static.drawthings.ai/DrawThings-#{version}.zip"
  name "Draw Things"
  desc "Run Stable Diffusion locally"
  homepage "https://drawthings.ai/"

  livecheck do
    url "https://drawthings.ai/releases/"
    regex(/href=.*?DrawThings[._-]v?(\d+(?:\.\d+)+(?:-\h+)?)\.zip/i)
  end

  app "Draw Things.app"

  zap trash: [
    "~/Library/Application Scripts/com.liuliu.draw-things",
    "~/Library/Containers/com.liuliu.draw-things",
  ]
end
