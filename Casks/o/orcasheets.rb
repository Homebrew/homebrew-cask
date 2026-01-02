cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "26.1.2"
  sha256 arm:   "f888bbc36585e2bfe252489e9c10a843bf60f9d9003f3372d0a64ad875ab18ce",
         intel: "4589822fd44c108934c8abab1bac7c233ba4fb6f60f2ec51ea028c71e80db39e"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/homebrew-orcasheets/"
  name "OrcaSheets"
  desc "Local-first data analytics"
  homepage "https://orcasheets.ai/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "OrcaSheets.app"

  zap trash: "~/Library/Application Support/OrcaSheets"
end
