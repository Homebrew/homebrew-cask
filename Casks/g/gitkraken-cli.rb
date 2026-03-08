cask "gitkraken-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "3.1.53"
  sha256 arm:          "69b571d2384b677e18c60e534b57edeecc349b897f56d70fc6cb06f6d9f58051",
         intel:        "7b80bb28aac90b98e8b1e92543673392a83b11457b049d479a306f553affb03e",
         arm64_linux:  "92b7a71f142bd3cd190467c49430125ba0bd4a5aa1352a25dcdc970789b919e8",
         x86_64_linux: "c865134c0a893c11ca8e9dc3151b8bb07befad34bdce4e10b33dd237a24fb0a9"

  url "https://github.com/gitkraken/gk-cli/releases/download/v#{version}/gk_#{version}_#{os}_#{arch}.zip"
  name "GitKraken CLI"
  desc "CLI for GitKraken"
  homepage "https://github.com/gitkraken/gk-cli"

  binary "gk"

  zap trash: "~/.gitkraken"
end
