cask "recipeui" do
  arch arm: "aarch64", intel: "universal"

  version "0.8.8"
  sha256 arm:   "32840be968f898ae6c7d09d8f15399d4681f687ffe1387eae26eda93f9d182ed",
         intel: "079f3ebfe952733b9f09dc392f6011b982a98b70325cc1a9536f8b1dad4a5a2d"

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
