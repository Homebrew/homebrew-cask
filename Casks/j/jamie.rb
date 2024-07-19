cask "jamie" do
  arch arm: "-arm64"

  version "4.1.7"
  sha256 arm:   "b06296d89499dcc77bc162b19cf2b0448052e6bde12af5835cef33b9b988b7f3",
         intel: "4f8cf7e8360d98a2583b4d98729735a3dc541e91bb8920811260e9494f251056"

  url "https://github.com/louismorgner/jamie-release/releases/download/v#{version}/jamie-#{version}#{arch}.dmg",
      verified: "github.com/louismorgner/jamie-release/"
  name "jamie"
  desc "AI-powered meeting notes"
  homepage "https://meetjamie.ai/"

  auto_updates true
  depends_on macos: ">= :catalina"

  app "jamie.app"

  zap trash: "~/Library/Application Support/jamie"
end
