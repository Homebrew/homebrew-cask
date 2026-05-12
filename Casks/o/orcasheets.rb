cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "26.4.3"
  sha256 arm:   "451cca4fa2dab7bf60e596cabc90853adc01f5767561959193827d514d7a31af",
         intel: "5c8f30910c758de78a065cb2d7953100fa1178298b4dd3484b099fafd40a4db2"

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
