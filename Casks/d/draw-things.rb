cask "draw-things" do
  version "26.1008.0-28cb682b"
  sha256 "28cb682b04a46a78879c659c15bfd9df1390306a7402e7fbd32a4fff6f4ea77e"

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
