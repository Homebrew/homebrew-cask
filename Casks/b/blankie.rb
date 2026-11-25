cask "blankie" do
  version "2.1.0"
  sha256 "6b7747e01531196dc229c91508e5eaf60a6babf4178cd91f996ee5a3273b2b49"

  url "https://github.com/codybrom/blankie/releases/download/v#{version}/Blankie.zip"
  name "Blankie"
  desc "Ambient sound mixer for creating custom soundscapes"
  homepage "https://blankie.rest/"

  no_autobump! because: :bumped_by_upstream

  depends_on macos: :tahoe

  app "Blankie.app"

  zap trash: [
    "~/Library/Application Scripts/com.codybrom.blankie",
    "~/Library/Application Scripts/group.com.codybrom.blankie",
    "~/Library/Application Support/Blankie",
    "~/Library/Caches/com.codybrom.blankie",
    "~/Library/Containers/com.codybrom.Blankie",
    "~/Library/Group Containers/group.com.codybrom.blankie",
    "~/Library/Preferences/com.codybrom.blankie.plist",
    "~/Library/Saved Application State/com.codybrom.blankie.savedState",
  ]
end
