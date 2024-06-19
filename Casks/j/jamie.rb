cask "jamie" do
  arch arm: "-arm64"

  version "4.1.1"
  sha256 arm:   "1fcbb8f0f208245085c5802fb630fd1ed5ff679f17ab09b1aaed79575811bb2d",
         intel: "0e50e675b077d3636e270e9506d1f37e918a5dddce3ffa680401bf69c0798752"

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
