cask "junie" do
  arch arm: "aarch64", intel: "amd64"
  os macos: "macos", linux: "linux"

  version "3893.6"
  sha256 arm:          "917bd6a481f0e0c0dd18abfeb5a6da3e23d5c9c529beeddffbb61742a925ff49",
         intel:        "5263a3102e8fc6d3bd248b49138006559705690b23e6d025816f0e6b015f76fb",
         arm64_linux:  "95ecc3fc905e4a5ca33f98eda65fb9c3b84f1a10bea50959d3090af02ab894fe",
         x86_64_linux: "dc88c2434c4d673d4df1fe579cfaaf34565b223c6a8702c6ee8e0494638f8635"

  on_macos do
    binary "Applications/junie.app/Contents/MacOS/junie"
  end
  on_linux do
    binary "junie/bin/junie"
  end

  url "https://github.com/JetBrains/junie/releases/download/#{version}/junie-release-#{version}-#{os}-#{arch}.zip",
      verified: "github.com/JetBrains/junie/"
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
