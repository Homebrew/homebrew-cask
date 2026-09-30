cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.33.0-rl.7.0.20260930023945-4fa2522dd687"
  sha256 arm:          "3673d65653d1faec6c0264ae0cdafbfa3744a08197ff572f04995e17236bf4eb",
         intel:        "bc36483075220e64ad7abe4884f8125e6adea198c56f55bfeab9e2547bf100a7",
         arm64_linux:  "3a79eb764a114e5648b24bc92bc9e83f5b283a8c0838bf1e2284b0b608ea4034",
         x86_64_linux: "7167874e232916b92e53426e842946444bbbeaf6d018d4fdd968c584a1271912"

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
