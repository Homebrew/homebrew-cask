cask "canvas" do
  version "1.0.3"
  sha256 "738dba64ee01868ba2403ceb79008c92fa636cfdaf2167f7814130e54bddcf50"

  url "https://github.com/kevinhermawan/Canvas/releases/download/v#{version}/Canvas-#{version}.dmg",
      verified: "github.com/kevinhermawan/Canvas/"
  name "Canvas"
  desc "DALL·E Playground"
  homepage "https://kevinhermawan.com/canvas"

  livecheck do
    url "https://raw.githubusercontent.com/kevinhermawan/Canvas/main/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Canvas.app"

  zap trash: [
    "~/Library/Application Support/Canvas",
    "~/Library/Containers/com.kevinhermawan.Canvas",
    "~/Library/Preferences/com.kevinhermawan.Canvas.plist",
  ]
end
