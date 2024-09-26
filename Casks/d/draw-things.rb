cask "draw-things" do
  version "1.20240925.0-314c7aec"
  sha256 "314c7aec1ac17da5027bd7a72f35013297870298810bbabb9c7cece61595abfd"

  url "https://static.drawthings.ai/DrawThings-#{version}.zip"
  name "Draw Things"
  desc "Run Stable Diffusion locally"
  homepage "https://drawthings.ai/"

  livecheck do
    url "https://drawthings.ai/releases/"
    regex(/href=.*?DrawThings[._-]v?(\d+(?:\.\d+)+(?:-[\da-f]*)?)\.zip/i)
  end

  app "Draw Things.app"

  zap trash: [
    "~/Library/Application Scripts/com.liuliu.draw-things",
    "~/Library/Containers/com.liuliu.draw-things",
  ]
end
