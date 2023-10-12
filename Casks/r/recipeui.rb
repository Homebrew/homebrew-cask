cask "recipeui" do
  arch arm: "aarch64", intel: "universal"

  version "0.8.9"
  sha256 arm:   "7613e2c4b46669f56722b38be2e58d5a129dcfee288cc879bf2656b5936c23ec",
         intel: "944bfa7841516aff0f9da29588f28d6420f42c556066ed11ebf493502ab125b9"

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
