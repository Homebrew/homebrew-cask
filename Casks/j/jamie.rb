cask "jamie" do
  arch arm: "-arm64"

  version "4.1.8"
  sha256 arm:   "1aa65cdd554c36bdc903d04058b2b4b5aa6b3a22b6fe6ba882448dca1af40025",
         intel: "4f7317455ac72bffe8a89095d9d521ac8e4c989eb6bae6a48663e2d9a39cb5ca"

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
