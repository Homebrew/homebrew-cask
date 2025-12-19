cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.26.2-0.20251218210008-a6280c8c690f"
  sha256 arm:          "ec0a9444ff88d29e742eb350d632e6c1fc169d97336ade29ca92f4c532656a14",
         intel:        "0e0b5ac53e78d77accfb8d2bd2e5284acb55d7499a7c40993c45bb0bbc613712",
         arm64_linux:  "d465ffc4fdf5dea9023475227f8743fcba9d5c704bae18668c161d2a6ccf870a",
         x86_64_linux: "50025fe8f2075baa274e6132322d751f8c8681309b0b048c65baff30a13b864a"

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
