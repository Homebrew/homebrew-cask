cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.24.1-0.20250829054400-4eebc91ae8e1"
  sha256 arm:          "89186d6010048d3766dac31785990e05b74c0751a1bf252b505fe3e3363b7f4c",
         intel:        "b7931e52cc6497ab20335e61212d08c64ab1fcb1b074e27606ca8fb21fa4160a",
         arm64_linux:  "fed9e67e791d415fead5b85659107031addd7af67471f17eb5ea9a88f664aca0",
         x86_64_linux: "cd4163e0f11007135d867fbb9866e376f502b4467ae1afdfb8be3b3a023ca3b5"

  url "https://dl.akuity.io/akuity-cli/v#{version}/#{os}/#{arch}/akuity"
  name "Akuity"
  desc "Management tool for the Akuity Platform"
  homepage "https://akuity.io/"

  livecheck do
    url "https://dl.akuity.io/akuity-cli/stable.txt"
    regex(/v?(\d+(?:\.\d+)+(?:[_-]\d+(?:\.\d+)*)?(?:[_-]\h+)?)/i)
  end

  binary "akuity"

  zap trash: "~/.config/akuity"
end
