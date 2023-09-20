cask "recipeui" do
  arch arm: "aarch64", intel: "universal"

  version "0.8.6"
  sha256 arm:   "fe74c3bd443c5846163dce2ed62b1332c4bd3589bc461f5acd9169b2b02563ba",
         intel: "914770178da76386dc6fc21d1b1bb55d67ae8fc9f923abfd596158428a76e515"

  url "https://github.com/RecipeUI/RecipeUI/releases/download/app-v#{version}/RecipeUI_#{arch}.app.tar.gz",
      verified: "github.com/RecipeUI/RecipeUI/"
  name "RecipeUI"
  desc "API discovery, testing and sharing tool"
  homepage "https://recipeui.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "RecipeUI.app"

  zap trash: "~/Library/Cache/com.recipeui"
end
