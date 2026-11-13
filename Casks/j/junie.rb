cask "junie" do
  arch arm: "aarch64", intel: "amd64"
  os macos: "macos", linux: "linux"

  version "4020.10"
  sha256 arm:          "9ccd22132aae6f283e581716a8980a3d3c264de47cbf7d2dd5d0aac97d43b5bd",
         intel:        "4613326033d387d364162cd7e0de78e38a03f7b2bca5f028b1340ccc1e0aa287",
         arm64_linux:  "b84ac26d38d5505308052148d8e37b94d48f703f3e5b9eaf62480b1f44b9ba55",
         x86_64_linux: "c796e66435214b376ae82d8c4a65a63dc5b34672aa29b59e84a86f0e1e1a0f13"

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
