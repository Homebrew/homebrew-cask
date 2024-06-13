cask "jamie" do
  arch arm: "-arm64"

  version "4.1.0"
  sha256 arm:   "87f0502ac2b5f9fc3294153386ef56aff54a30eff77bbced5ab3fc4b06611ba7",
         intel: "e05e23e0acbbe4e6f2a9d1912828a21395fa4ee0d63c2dd9ec2eecccd8bfe8b8"

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
