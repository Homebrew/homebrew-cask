cask "recipeui" do
  arch arm: "aarch64", intel: "universal"

  version "0.8.3"
  sha256 arm:   "79ee1aee5eeeb0edefcd73c36ef402e4c01e858ccd4125396802be5ea4d2a7ba",
         intel: "27b901712b057d333dc9b8ff1eca7a3a66d7d2b7ea39c8f8311e443279b7fd06"

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
