cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "26.9.1"
  sha256 arm:   "fddf846fc0a02aca7fc0806cd0a10b5a431f2ecd287d86c16b4feda5cc43a319",
         intel: "1d10457fd5e348d69a1ab2a4fd5c4d493f8256ecd1cb3de18972ebb6a65704e3"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg"
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
