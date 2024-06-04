cask "draw-things" do
  version "1.20240603.0-d77e835d"
  sha256 "d77e835d91f012b75b5d03b74eb6653b3c4489d5f54ecae601e2c37578e0508f"

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
