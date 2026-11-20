cask "junie" do
  arch arm: "aarch64", intel: "amd64"
  os macos: "macos", linux: "linux"

  version "4100.10"
  sha256 arm:          "d9a5a964e2d86aadb576d26db759e92d3a92b0fd4ab21c5246de203a189a9da3",
         intel:        "47bc58287e593ebbe4a8cb5af808148747f928edb61d96dc2c5a969d9d4bd664",
         arm64_linux:  "491021a872a35e1dfd9175ca7eba9e2769df5a9f8bbb7b1d4e5a65b61703925e",
         x86_64_linux: "802b956e309e28125891628fa852a55b76b96910b0c32dfc1b8d85f179b37c2e"

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
