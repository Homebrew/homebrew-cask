cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.34.0-rl.1.0.20261125064825-6df88d41e0ba"
  sha256 arm:          "3959cafb7ad91f110a7eb17963c0c95a297671ee6cd3bab6d387fef115edeabf",
         intel:        "04bca9d9e0d8f8ae965464189b2b82dbd03237074a322a2bf295a93a97c215b4",
         arm64_linux:  "bcadd3a6949bac5bd7725b8d5bccc0207e62630a062d7a89083fdaf2d0cf2d55",
         x86_64_linux: "7bc12b8b156cd31ceca479705b35c3e9865ef5f406ec604ae739e808e540b5b9"

  url "https://dl.akuity.io/akuity-cli/v#{version}/#{os}/#{arch}/akuity"
  name "Akuity"
  desc "Management tool for the Akuity Platform"
  homepage "https://akuity.io/"

  livecheck do
    url "https://dl.akuity.io/akuity-cli/stable.txt"
    regex(/^v?(\d+(?:\.\d+)+.*)$/i)
  end

  binary "akuity"

  zap trash: "~/.config/akuity"
end
