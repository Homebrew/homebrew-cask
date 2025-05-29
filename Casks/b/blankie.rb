cask "blankie" do
  version "1.0.10"
  sha256 "d575e3ce13c9f4ecf6fb36aec3793481695ab2aa8100f6d481f96d6d8f8e942c"

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
