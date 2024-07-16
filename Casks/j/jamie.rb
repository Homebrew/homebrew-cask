cask "jamie" do
  arch arm: "-arm64"

  version "4.1.6"
  sha256 arm:   "38d680cc178a3b015295c0a0d4e3224723db05d9e7b0cc8d8c5c24e11e2fe333",
         intel: "40d7d2d864d42a19ff714939535b15fbe60b7099198f0728e72b75ee3528fd9c"

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
