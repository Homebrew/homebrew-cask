cask "jamie" do
  arch arm: "-arm64"

  version "4.1.2"
  sha256 arm:   "ce8e752e171589b65b12d3b8b921933dc2395b57d8de88589c50d95da56218f6",
         intel: "af95e80c20a979cb577684e98640771331075db5e5f3d46d735a1ec9edb8deab"

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
