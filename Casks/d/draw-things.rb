cask "draw-things" do
  version "1.20260430.0-09f170fc"
  sha256 "09f170fc8d6830209879a328963fcbef7153ea54a36de72da9bc65cdd510011c"

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

  zap trash: [
    "~/Library/Application Scripts/com.liuliu.draw-things",
    "~/Library/Containers/com.liuliu.draw-things",
  ]
end
