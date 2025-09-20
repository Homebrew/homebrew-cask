cask "jamie" do
  version "4.5.0"
  sha256 "39014fabc16ff77b08c4e333ce3ff9f911dc7b2ea0f3da3cfbf480d978ecd946"

  url "https://github.com/louismorgner/jamie-release/releases/download/v#{version}/jamie-#{version}-mac.zip",
      verified: "github.com/louismorgner/jamie-release/"
  name "Jamie"
  desc "AI-powered meeting notes"
  homepage "https://meetjamie.ai/"

  auto_updates true
  depends_on macos: ">= :ventura"

  app "jamie.app"

  zap trash: "~/Library/Application Support/jamie"
end
