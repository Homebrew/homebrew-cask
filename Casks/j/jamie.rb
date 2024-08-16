cask "jamie" do
  arch arm: "-arm64"

  version "4.2.2"
  sha256 arm:   "334b84978e82e8b96ae5e6413cbe9a1fe31567ca43393c6e906da4bd523dc350",
         intel: "82e12841cf67f79d3c269a018708961628e46be9ffa2127741a4cf861608a202"

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
