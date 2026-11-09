cask "junie" do
  arch arm: "aarch64", intel: "amd64"
  os macos: "macos", linux: "linux"

  version "3959.6"
  sha256 arm:          "51f3b9e8c039d01402f19d7ada7c6da75d53d01562b6b7880c0bdf6b6b537db3",
         intel:        "4c80872ce33fe0fc28f23b6d7d7af0d977480977ce0786eb45aece48a0920d69",
         arm64_linux:  "6327b552f8f96a8c8114f9137bef18808692f8b03642f8b49df62c51ebea1e3f",
         x86_64_linux: "5f6979de9ab078e24defeb0621b882f6e6e27a0f66dcd82bc8467c7fd5841ec5"

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
