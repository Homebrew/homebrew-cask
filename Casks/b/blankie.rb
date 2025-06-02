cask "blankie" do
  version "1.0.12"
  sha256 "e32128be52852db69b01ce5b489a2d87f771e375f0feb9cc8d9393a5a6179a89"

  url "https://github.com/codybrom/blankie/releases/download/v#{version}/Blankie.zip",
      verified: "github.com/codybrom/blankie/"
  name "Blankie"
  desc "Ambient sound mixer for creating custom soundscapes"
  homepage "https://blankie.rest/"

  depends_on macos: ">= :sonoma"

  no_autobump! because: :bumped_by_upstream

  app "Blankie.app"

  zap trash: [
    "~/Library/Application Support/Blankie",
    "~/Library/Caches/com.codybrom.blankie",
    "~/Library/Containers/com.codybrom.Blankie",
    "~/Library/Preferences/com.codybrom.blankie.plist",
    "~/Library/Saved Application State/com.codybrom.blankie.savedState",
  ]
end
