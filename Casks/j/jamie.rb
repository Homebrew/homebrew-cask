cask "jamie" do
  arch arm: "-arm64"

  version "4.0.11"
  sha256 arm:   "b93903dd648ed72a31f8572178e0d5bff6fec8af7a1704e1ab1d04da487c5827",
         intel: "5929edd1d8002f826caa44e0a2eb45ff2fb36a8566bce8afe166185d80d5295e"

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
