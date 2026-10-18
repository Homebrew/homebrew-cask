cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "26.10.1"
  sha256 arm:   "f71196bd8aa8de158ea69be52e341c77b2310fc935401435170e0d2a231391ec",
         intel: "9392f3f5643abf49f090df6d976cc3ba2e56fdf6bfdb77ecd2af3ab2997eb1c9"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg"
  name "OrcaSheets"
  desc "Local-first data analytics"
  homepage "https://orcasheets.ai/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "orcasheets.app"

  zap trash: "~/Library/Application Support/OrcaSheets"
end
