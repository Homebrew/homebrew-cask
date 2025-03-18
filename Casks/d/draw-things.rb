cask "draw-things" do
  version "1.20250317.0-107c2e72"
  sha256 "107c2e7219a1e5072ce7876aa9e3e23852da0f27689be0cfcfced0ae570d758d"

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
