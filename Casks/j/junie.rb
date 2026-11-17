cask "junie" do
  arch arm: "aarch64", intel: "amd64"
  os macos: "macos", linux: "linux"

  version "4100.5"
  sha256 arm:          "ad103a996f0a4f5cee051f858bdf0fc33d4ee83b7c9219971d485046f084cd3c",
         intel:        "5c018341afb28703174a27f3a5367fd67cd9ad905377a0ad9ee4ca6568dea7b1",
         arm64_linux:  "b35af126bc488f5830650e93a008d537fd6e4e1de372cd7b76e9fa86d8c85b04",
         x86_64_linux: "a1843e6f744c21ba64dd04b75688359f20156bad9aa58ebb1b14b21c98773d11"

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
