cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.31.0-rl.5.0.20260626040347-a8d403d6700f"
  sha256 arm:          "3d98101a49b11d7f761f3454e4dd5ece7c40cd5389ee6a1d8490831fc7bf97eb",
         intel:        "99eb6881aeb9c50f6458a1f116bd1bb55ba10ba1f69b1151a301405eb94dc8ee",
         arm64_linux:  "9a334ff97386d34821455fdc25450e4279defcaaf2987d3527a980aceac00f74",
         x86_64_linux: "1d1eb1844776105536dc99a32a4c276adad3e2e118b705c048a37a1e0e5f51fb"

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
