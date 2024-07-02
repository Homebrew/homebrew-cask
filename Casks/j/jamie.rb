cask "jamie" do
  arch arm: "-arm64"

  version "4.1.3"
  sha256 arm:   "f9f9f6f765073d1a82c50cae8254836c5c5be2cefbfa625354aa365b9b6c6250",
         intel: "4e34505c0e3560cae2f3f673dff0ecca53464b3fe4ee1956dd60eabf8c3a5ed6"

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
