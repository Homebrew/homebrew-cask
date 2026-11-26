cask "junie" do
  arch arm: "aarch64", intel: "amd64"
  os macos: "macos", linux: "linux"

  version "4171.7"
  sha256 arm:          "cc00af384815dd1df8489c339185eea201cbb613b38b78a0cd8f4b11d7e5aaa3",
         intel:        "2a2c6a1084da1d3df6d34ad1b42edd9cf4070392aba5d6c9fdd7eeaf8c0c003c",
         arm64_linux:  "dccd48c0d148644a16f79665db70cac7c1510f087aab32ab23f6f1d396aba8df",
         x86_64_linux: "e955e6c20e22856bc017b294d7c4b748eb7dbb26eb24ab6d9f46870234f988c3"

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
