cask "jamie" do
  version "4.0.0"
  sha256 "97f05892739431cf5ac5dc453f5e5d7720c72d9bc52d7505fa34743be2eb0be5"

  url "https://github.com/louismorgner/jamie-release/releases/download/v#{version}/jamie-#{version}.dmg",
      verified: "github.com/louismorgner/jamie-release/"
  name "jamie"
  desc "Best AI-powered meeting notes. Across all tools. 15+ languages. Privacy-first"
  homepage "https://meetjamie.ai/"
  
  auto_updates true
  depends_on macos: ">= :catalina"

  app "jamie.app"

  zap trash: "~/Library/Application Support/jamie"
end
