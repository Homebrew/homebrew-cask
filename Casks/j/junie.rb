cask "junie" do
  arch arm: "aarch64", intel: "amd64"
  os macos: "macos", linux: "linux"

  version "4171.6"
  sha256 arm:          "870accdcc35b2404924ad22945ae90f3be3c9a9b11e06228fe0fdf13ad8144d8",
         intel:        "3ba15892f705386715716b06bbdd859bb23c1033bc3a6ee0ff447074c74cf730",
         arm64_linux:  "80e862327d687801c3234da775f09858229cb80228c2da2e69f21e706eb61cf3",
         x86_64_linux: "57b15c990a9f7f350e40ff1d1967fbd3470ea6f966e4296a11eda511c298ea52"

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
