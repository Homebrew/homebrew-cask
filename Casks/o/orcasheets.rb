cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "26.1.5"
  sha256 arm:   "b0dea9e7b389fb6ce090c782ed53afa26ec0b0dcf50d84ede9ff8b106579c3ed",
         intel: "fedaf939fc52a3f2afbec95d464ad312e7c4ad406bb3dbcbcd34c76946be5efc"

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
