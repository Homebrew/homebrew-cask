cask "draw-things" do
  version "26.0924.0-4311758c"
  sha256 "4311758c58f60b93f62073344989d987fa4c3cb9d936a2b87a570e5fc671eeff"

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
