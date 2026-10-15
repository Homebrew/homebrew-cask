cask "draw-things" do
  version "26.1013.0-9bb6696f"
  sha256 "9bb6696f6fa51fd9e8dfa9ce0680e1f04f0779c710b359ad470ea492a958127d"

  url "https://static.drawthings.ai/DrawThings-#{version}.zip"
  name "Draw Things"
  desc "Run Stable Diffusion locally"
  homepage "https://drawthings.ai/"

  livecheck do
    url "https://drawthings.ai/downloads/"
    regex(/href=.*?DrawThings[._-]v?(\d+(?:\.\d+)+(?:-\h+)?)\.zip/i)
  end

  depends_on macos: :monterey

  app "Draw Things.app"

  uninstall quit: "com.liuliu.draw-things"

  zap trash: [
    "~/Library/Application Scripts/com.liuliu.draw-things",
    "~/Library/Containers/com.liuliu.draw-things",
  ]
end
