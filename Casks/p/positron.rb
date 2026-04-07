cask "positron" do
  arch arm: "arm64", intel: "x64"

  version "2026.04.0-269"
  sha256 arm:   "1c51b6aaa5f81383b4bddbec3d6d09785d5d1c87fc71494f6f918bea9b6d3eb8",
         intel: "51dc994b59c1a0ac164bd68bdae438bb48d22144be638742422a39e0f90d5691"

  url "https://cdn.posit.co/positron/releases/mac/#{arch}/Positron-darwin-#{version}-#{arch}.zip"
  name "Positron"
  desc "Data science IDE"
  homepage "https://positron.posit.co/"

  livecheck do
    url "https://cdn.posit.co/positron/releases/mac/#{arch}/releases.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: ">= :monterey"

  app "Positron.app"

  zap trash: [
    "~/.positron",
    "~/Library/Application Support/Positron",
    "~/Library/Preferences/com.rstudio.positron.plist",
    "~/Library/Saved Application State/com.rstudio.positron.savedState",
  ]
end
