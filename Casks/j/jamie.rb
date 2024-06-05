cask "jamie" do
  arch arm: "-arm64"

  version "4.0.10"
  sha256 arm:   "7fc52d1ee9d514ed006648416e34b4db94612a85a95b39c51d43f943a508b19b",
         intel: "815d4335bdeb22623618e769c0dcca7cc03698cad75351c0b28e8f04ef957d00"

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
