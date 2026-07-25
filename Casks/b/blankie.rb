cask "blankie" do
  version "2.0.2"
  sha256 "0a964ed8f8bd45c73c2a559097ec8f8401c3f8e4251a0e80af28b539d1588f79"

  url "https://github.com/codybrom/blankie/releases/download/v#{version}/Blankie.zip",
      verified: "github.com/codybrom/blankie/"
  name "Blankie"
  desc "Ambient sound mixer for creating custom soundscapes"
  homepage "https://blankie.rest/"

  no_autobump! because: :bumped_by_upstream

  depends_on macos: :tahoe

  app "Blankie.app"

  zap trash: [
    "~/Library/Application Support/Blankie",
    "~/Library/Caches/com.codybrom.blankie",
    "~/Library/Containers/com.codybrom.Blankie",
    "~/Library/Preferences/com.codybrom.blankie.plist",
    "~/Library/Saved Application State/com.codybrom.blankie.savedState",
  ]
end
