cask "blankie" do
  version "1.0.7"
  sha256 "c2cb5bcf686ada9e9d04216c7483feeeea0f16bd3a989958615f211b30fb6031"

  url "https://github.com/codybrom/blankie/releases/download/v#{version}/Blankie.zip",
      verified: "github.com/codybrom/blankie/"
  name "Blankie"
  desc "Ambient sound mixer for creating custom soundscapes"
  homepage "https://blankie.rest/"

  depends_on macos: ">= :sonoma"

  app "Blankie.app"

  zap trash: [
    "~/Library/Application Support/Blankie",
    "~/Library/Caches/com.codybrom.blankie",
    "~/Library/Containers/com.codybrom.Blankie",
    "~/Library/Preferences/com.codybrom.blankie.plist",
    "~/Library/Saved Application State/com.codybrom.blankie.savedState",
  ]
end
