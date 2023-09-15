cask "recipeui" do
  arch arm: "aarch64", intel: "universal"

  version "0.8.2"
  sha256 arm:   "ddbe50e4379da19c86e106283200ab7e49550eec87e39041e41d5cbc5c5f58c2",
         intel: "4ef74aa68afe673a45d7bf5bd725fcd6e08bf26cd8df32d148f5154c6d12c116"

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
