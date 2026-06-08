cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "26.5.2"
  sha256 arm:   "51361539368bcc1a8d7d6b3ca8c80b9bedce15aa9fa700ecb890c7d33ab1cd27",
         intel: "ffd16dbaf8ec8e4e9b3ec33d2fe77afdabcf16a2b2b46a26c7b0e029cc8f6895"

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

  app "OrcaSheets.app"

  zap trash: "~/Library/Application Support/OrcaSheets"
end
