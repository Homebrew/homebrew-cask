cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.23.1-0.20250709190259-568f65713673"
  sha256 arm:          "e000d6934f6d0ca2cd4ede0d467b2e07504bc2d2468e73ceba203c93a32428e2",
         intel:        "1c12af8d3734822112a181acff31095b8ccfda1320655ae7042997eaf6c83a85",
         arm64_linux:  "e197a390a2683cc9f218c42ae8abc0ec613d65b4e19818fff434caa0d399d0d2",
         x86_64_linux: "9ad5d403a5cd4cc1e073b997a41b59b0a2bc8cd46ba45a9cde77f0c072336d27"

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
