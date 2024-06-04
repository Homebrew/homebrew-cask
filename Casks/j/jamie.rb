cask "jamie" do
  arch arm: "-arm64"

  version "4.0.10"
  sha256 arm:   "9b74d981535d4cb9ed689d5bf5b99f364e65268fb90a54f254eb7ad13f750c30",
         intel: "9fbb972d291dff6a0edfff9d2ac12bf33f5e2e9d343e13c707715f3afe97e372"

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
