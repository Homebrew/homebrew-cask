cask "junie" do
  arch arm: "aarch64", intel: "amd64"
  os macos: "macos", linux: "linux"

  version "3959.5"
  sha256 arm:          "99e40d2614b71fe0d9052cd0c3d069f045127fad2e4d552f0497352481c46931",
         intel:        "a09a7a2222034be135bdfddcc913cb9c243d41e992fbbdf8eb4694f5d3836d89",
         arm64_linux:  "0e320c65f6a4edae5afe2041db22a430e30edacac263f6fbd2a45bd37ad77f4b",
         x86_64_linux: "7d69a09b8021d901ea94aabcd86718a654cae08c1df11dec5788cc9bc39915b4"

  on_macos do
    binary "Applications/junie.app/Contents/MacOS/junie"
  end
  on_linux do
    binary "junie-app/bin/junie"
  end

  url "https://github.com/JetBrains/junie/releases/download/#{version}/junie-release-#{version}-#{os}-#{arch}.zip"
  name "Junie"
  desc "AI coding agent by JetBrains"
  homepage "https://junie.jetbrains.com/"

  livecheck do
    url "https://raw.githubusercontent.com/jetbrains-junie/junie/main/update-info.jsonl"
    regex(/"version"\s*:\s*"(\d+(?:\.\d+)+)"/i)
  end

  zap trash: [
    "~/.junie",
    "~/.local/share/junie",
  ]
end
