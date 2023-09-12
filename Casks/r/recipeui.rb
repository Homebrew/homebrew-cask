cask "recipeui" do
  arch arm: "aarch64", intel: "universal"

  version "0.8.0"
  sha256 arm:   "f961d802c5b83bd47baee5f0da7bd9607885a428eec18db7ea96163266b86df0",
         intel: "6299d0ef268e7c68a22f1ec12872d41f62ae052620d3cd707e4702c371ca7f86"

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
