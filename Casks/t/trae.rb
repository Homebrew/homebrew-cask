cask "trae" do
  arch arm: "arm64", intel: "x64"

  version "1.0.7650"
  sha256 arm:   "49c75113809c011cfd1908bbbfe86670f1e2b9943fef281d4f1ea9d518840dac",
         intel: "98c4b2d5e1a77bd7713f692d0de5c280fe9d8a60794ef5f72da15d75274ad12e"

  url "https://lf-trae.toscdn.com/obj/trae-ai-cn/pkg/app/releases/stable/#{version}/darwin/Trae-darwin-#{arch}.dmg",
      verified: "lf-trae.toscdn.com/"
  name "Trae"
  desc "Adaptive AI IDE"
  homepage "https://www.trae.ai/"

  livecheck do
    url "https://api.trae.ai/icube/api/v1/native/version/trae/latest"
    strategy :json do |json|
      json.dig("data", "manifest", "darwin", "version")
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Trae.app"

  zap trash: [
    "~/Library/Application Support/Trae",
    "~/Library/Preferences/com.trae.app.plist",
    "~/Library/Saved Application State/com.trae.app.savedState",
  ]
end
