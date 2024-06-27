cask "cilicon" do
  version "2.2.2"
  sha256 "4978b91aa189b0ed43c020495894a61a15d039b6106c6559796afb2f99c04723"

  url "https://github.com/traderepublic/Cilicon/releases/download/v#{version}/Cilicon.zip"
  name "Cilicon"
  desc "Self-Hosted ephemeral CI on Apple Silicon"
  homepage "https://github.com/traderepublic/Cilicon"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "Cilicon.app"

  zap trash: [
    "~/.cilicon.yml",
    "~/cilicon.yml",
  ]
end
