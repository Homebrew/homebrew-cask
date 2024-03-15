cask "jamie" do
  version "4.0.4"
  sha256 "d37282bd328cb74f832c3ace09cc789b30669c67f0010a6770b0331ab70eb854"

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
