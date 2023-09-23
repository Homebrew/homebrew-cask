cask "recipeui" do
  arch arm: "aarch64", intel: "universal"

  version "0.8.7"
  sha256 arm:   "16af512a65cec71777b11a3b4586b59525bc56c567fa2532d73eebc8c05014b4",
         intel: "04d8adfcd60798175769a3180fb81e8e627288df098ebcf74543a09ce3f20cb3"

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
