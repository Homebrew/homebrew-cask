cask "cilicon" do
  version "2.2.0"
  sha256 "9004441d3004b659b91da08538ebe0b8808c96696e363e83de951b34d4f84865"

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
