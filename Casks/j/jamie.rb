cask "jamie" do
  version "4.0.1"
  sha256 "4453b6d10c11e5b1c3750a6d5266432e4fd69ca1d938d386ba004e9736a4a132"

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
