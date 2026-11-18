cask "junie" do
  arch arm: "aarch64", intel: "amd64"
  os macos: "macos", linux: "linux"

  version "4100.7"
  sha256 arm:          "bbb5b78a2e6dfda1c6445961f7dd7dd0d0486eda50f7edc486dffb66015a39a6",
         intel:        "4c1b3b040d3f8916e622b4669fbd96dbe22d3edc720f7a6d52ddce52ea1dabb4",
         arm64_linux:  "bb193d391639ea974eb634dbc4c2db9fd0aaa88043a1d0747efca296d60a1605",
         x86_64_linux: "66715983ea58fd26c9cfc38123eab7ec3c3a6103a3fedfba89957161354b5cb4"

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
