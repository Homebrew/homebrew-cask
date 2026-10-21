cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "26.10.2"
  sha256 arm:   "5dc5790689a4d82a7d7a3886ec4182ad4dab7efa3a0c26f2b986072680a0fff1",
         intel: "63d8ea2fa707a93dc92cbc3c653fd9be7fbb286c52e28b07f0bf4c4242238d19"

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
