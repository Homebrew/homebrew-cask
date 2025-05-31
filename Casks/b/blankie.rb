cask "blankie" do
  version "1.0.11"
  sha256 "fc94f90ebcc72caec9e9df1b95f623e221ae1fc2c9b069b51d0348aec9d357ac"

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
