cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "26.3.1"
  sha256 arm:   "b876658f051548e5fe15eccbd970acbaa8021bcc4a05e5a85900dfd92738f23b",
         intel: "b20fafaa3d1afb617bec53dd1f7b37980f8a0ba8c96c6a7d7d2dd5ea5a2a7220"

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
