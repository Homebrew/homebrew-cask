cask "jamie" do
  arch arm: "-arm64"

  version "4.2.1"
  sha256 arm:   "dab82ccab83cdd58a849dad615f1138d599856debf41819c077d7d870d0668b9",
         intel: "e2b9b2dc3f4228f798e289c4542db6edcdb5a1421309c7d171b18da878946362"

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
