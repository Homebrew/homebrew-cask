cask "cilicon" do
  version "2.1.0"
  sha256 "af39cff356afb5c22f006349a72f0bf1db02ad55bb2401eeb6bd360308fd9c01"

  url "https://github.com/traderepublic/Cilicon/releases/download/v#{version}/Cilicon.zip"
  name "cilicon"
  desc "Self-Hosted ephemeral CI on Apple Silicon"
  homepage "https://github.com/traderepublic/Cilicon"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "Cilicon.app"

  zap trash: [
    "~/cilicon.yml",
    "~/.cilicon.yml",
  ]
end
