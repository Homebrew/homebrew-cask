cask "draw-things" do
  version "26.1123.0-5b18d539"
  sha256 "5b18d53906bf29c7c6c98949e57c23f91af35a2e503def92b37620968e7a7ea0"

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
