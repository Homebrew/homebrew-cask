cask "recipeui" do
  arch arm: "aarch64", intel: "universal"

  version "0.7.7"
  sha256 arm:   "b443a1124480b149a17bb52fafd04b25d35ccfa59ef5aef0f03c3709a1856efe",
         intel: "d0e217c6fd9121afcfea8302fa0a8f46bfe81b5c8b82b0922fa2631bd922e37d"

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
