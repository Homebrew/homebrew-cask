cask "junie" do
  arch arm: "aarch64", intel: "amd64"
  os macos: "macos", linux: "linux"

  version "4100.8"
  sha256 arm:          "5799747e96716671272ae9caa2dde8e91843611d65a2ab4b9750692f006be00a",
         intel:        "da7a9b6cc100a0ca6cf14848f1d6d3cfa8d9051f0a73a81b393d247e6ce3ec6d",
         arm64_linux:  "5d7df32781097babd2060f2d480d4606e80c25171256d3f43d5bf75da0f585c3",
         x86_64_linux: "8deca9c3d190b2ba0eb1f8dcdc363f4b35b49f36548e42191f27d575e1320581"

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
