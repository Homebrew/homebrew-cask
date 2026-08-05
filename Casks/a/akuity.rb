cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.32.0-rl.1.0.20260804092436-2611577a617e"
  sha256 arm:          "6e233522edfbf4ed264880db30e8a54da8fa93f285fc640a258d1385c301a615",
         intel:        "29f81a8029d4f1a13e8ffe4eae9a54f05715af1d99fd3b98fcb89a2c83c56b30",
         arm64_linux:  "40921cf26164729a9e81d634647a4ddb8e5cf784d6e08b18ad664c05984196fc",
         x86_64_linux: "83e315cf435fb460efb6ea02664310e4a69ebfbff9f104eba497aa32fc3f983c"

  url "https://dl.akuity.io/akuity-cli/v#{version}/#{os}/#{arch}/akuity"
  name "Akuity"
  desc "Management tool for the Akuity Platform"
  homepage "https://akuity.io/"

  livecheck do
    url "https://dl.akuity.io/akuity-cli/stable.txt"
    regex(/^v?(\d+(?:\.\d+)+.*)$/i)
  end

  binary "akuity"

  zap trash: "~/.config/akuity"
end
