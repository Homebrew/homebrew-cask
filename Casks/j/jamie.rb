cask "jamie" do
  arch arm: "-arm64"

  version "4.1.4"
  sha256 arm:   "1eb43710dea735001bb0fe0ceed0a7754a135111326811817819ddeb49822102",
         intel: "671960dadea8bf5811a0567daecc391096f939c407ad3b253ea93dcf870dc0b8"

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
