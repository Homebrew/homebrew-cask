cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.34.0-rl.1.0.20261022095256-e2e2d7e48392"
  sha256 arm:          "ae5cc16a201432242872895842dcfc1d98c83e29da6adf503ca5788b7459aa7b",
         intel:        "89a83a59b9027f4543ae48025887ba6f24e5503246e20a521d679653e84ed091",
         arm64_linux:  "aa423aef19b09b5f0a8475fc05e22eeb058f56748fa88430e97d7aa162d9eec8",
         x86_64_linux: "e0dca70488aa7823b5878b81765d0b6e4ca0ac03eaf21308690e20c6c84a16a2"

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
