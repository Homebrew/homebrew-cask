cask "jamie" do
  version "4.0.2"
  sha256 "852a08d86538cb3826ec2eda8e0676ea73a4b8b9601f5d09720648588b933eac"

  url "https://github.com/louismorgner/jamie-release/releases/download/v#{version}/jamie-#{version}.dmg",
      verified: "github.com/louismorgner/jamie-release/"
  name "jamie"
  desc "AI-powered meeting notes"
  homepage "https://meetjamie.ai/"

  auto_updates true
  depends_on macos: ">= :catalina"

  app "jamie.app"

  zap trash: "~/Library/Application Support/jamie"
end
