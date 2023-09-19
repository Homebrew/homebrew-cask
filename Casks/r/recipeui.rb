cask "recipeui" do
  arch arm: "aarch64", intel: "universal"

  version "0.8.4"
  sha256 arm:   "e1389d3fc34916ad13a190f6534995afcda4c17107f2970cb3b41369a18d3cbf",
         intel: "48f0fbabd4ad4cbfcad5aae48a01680b9aabbb13712871ac626c0c83b9097e78"

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
