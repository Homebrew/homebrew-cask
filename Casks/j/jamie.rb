cask "jamie" do
  arch arm: "-arm64"

  version "4.2.5"
  sha256 arm:   "0dfc2e08cc7c4d870e5cbc67dd812e2229867b0621d9ba5907c7f8c94e369d03",
         intel: "9c55b9f1462be4c3babd5309aa5ccba4640631ec9a98c281585bc3622c89d841"

  url "https://github.com/louismorgner/jamie-release/releases/download/v#{version}/jamie-#{version}#{arch}.dmg",
      verified: "github.com/louismorgner/jamie-release/"
  name "Jamie"
  desc "AI-powered meeting notes"
  homepage "https://meetjamie.ai/"

  auto_updates true
  depends_on macos: ">= :catalina"

  app "jamie.app"

  zap trash: "~/Library/Application Support/jamie"
end
