cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.33.0-rl.7.0.20261007011915-13a17c392220"
  sha256 arm:          "9f7b91b0e9f9ff73c50fdf8e4b3bed4a6ca939954bd81ac2d98996501d241589",
         intel:        "3504b8b18ff13229d7e4c00a90c222620d562f18355ca267eb02a0a2a2c09cbc",
         arm64_linux:  "5cbb9135352495126eeb5e0c393fa5e4a364d3fcebc946c542eed472fcd1c370",
         x86_64_linux: "29e0b2431e84b6aa47b08247cc8630676c38b691c81bc9f83f175cd86552d5a3"

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
