cask "cilicon" do
  version "2.2.1"
  sha256 "9a9dbed5d8975ad8d6d7511ae4009d6d537c800025831ae1e88cd67c12f0c662"

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
