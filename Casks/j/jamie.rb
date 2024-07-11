cask "jamie" do
  arch arm: "-arm64"

  version "4.1.5"
  sha256 arm:   "4da56d1aaf9f62f8cdceb225b08531075160b5388ab6b14a883aa82fda707b5f",
         intel: "79573e4b82e63b7db9854708570da0c546176f4eeba47bde82355d03b15a17c3"

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
