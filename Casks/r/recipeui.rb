cask "recipeui" do
  arch arm: "aarch64", intel: "universal"

  version "0.8.1"
  sha256 arm:   "73ca70020a2df7f0457cd1d4029f7caf6caebc66adab6d37289b4e2d7c67ba89",
         intel: "eb2af2d62f672d2417eb663906d9135328305c80d2078c24555b7084d0f3d64c"

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
