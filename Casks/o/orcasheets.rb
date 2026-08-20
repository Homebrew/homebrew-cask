cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "26.8.2"
  sha256 arm:   "ecba1e0b02cde72718ffd3559bde183a3af5a5e0a855a5472979f34cd278f73e",
         intel: "55b3d47c9efc36c79b0e57d0ef501e66ca15716ea1a4ac5d6be7466459f10c58"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/homebrew-orcasheets/"
  name "OrcaSheets"
  desc "Local-first data analytics"
  homepage "https://orcasheets.ai/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur

  app "orcasheets.app"

  zap trash: "~/Library/Application Support/OrcaSheets"
end
