cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.23.1-0.20250715155031-e866209b90e1"
  sha256 arm:          "eaea560cf153218b3d2067709cd284829263d0662b34658850aa2d081d8da3f6",
         intel:        "0663261db467ad4790cbabd8c798f7c131cb73c19c71e19eb9a5ff6fb2f31db8",
         arm64_linux:  "3d1529f7fd5de80f7458a869c1f4d58424f32f7944288ec7b823aa9fe5171082",
         x86_64_linux: "46933247edbed5576a1f6bd9d34ac950c326580221a8ff2f5ce9927430235104"

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
