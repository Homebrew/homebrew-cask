cask "junie" do
  arch arm: "aarch64", intel: "amd64"
  os macos: "macos", linux: "linux"

  version "4020.7"
  sha256 arm:          "c4d691e0be61df851b04f91e3955c6286f9a4284184f05c249cc508f76ea3f43",
         intel:        "09f1d9949eb4f34a432dcafd61929d6384f314ed8e100fadce1fcbddf809d3b7",
         arm64_linux:  "25784adc33ef1e027831cbecdc9e3d54feb0ea27709c0ce8e619cc79079abe84",
         x86_64_linux: "705476225ce1840a29925d75a23cef4ce63270bf88617cd5f305b0e51a1d6b36"

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
