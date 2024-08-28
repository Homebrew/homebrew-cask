cask "jamie" do
  arch arm: "-arm64"

  version "4.2.4"
  sha256 arm:   "c76f9afd69730aed842379aa16888a63efff2f6d16848512704f548300f67aae",
         intel: "6c1dcb1b2c12a1d5154cfe01756a4e4b3c4ee0f90feb52ea9c82912fc9c9c6dd"

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
