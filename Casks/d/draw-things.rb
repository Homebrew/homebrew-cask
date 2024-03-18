cask "draw-things" do
  version "1.20240316.0-9a04a66c"
  sha256 "9a04a66c1fbe6828dc4957a206d3d27e5aab4838181ed05b0bd22d2b05a76bf5"

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
