cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "2.1.0"
  sha256 arm:   "695efb40fc21b6ac2d34b7f3ed6ba4e259254f345d861a37e7a25e7fdc1fcee5",
         intel: "093f1f64e75b3836fb05d7fc0a9edeb560a42112d42fa200831ce0dee0591857"

  url "https://github.com/usebruno/bruno/releases/download/v#{version}/bruno_#{version}_#{arch}_mac.dmg",
      verified: "github.com/usebruno/bruno/"
  name "Bruno"
  desc "Open source IDE for exploring and testing APIs"
  homepage "https://www.usebruno.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "Bruno.app"

  zap trash: [
    "~/Library/Application Support/bruno",
    "~/Library/Preferences/com.usebruno.app.plist",
    "~/Library/Saved Application State/com.usebruno.app.savedState",
  ]
end
