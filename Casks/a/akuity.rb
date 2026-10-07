cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.33.0-rl.7.0.20261007003427-40729a4ca084"
  sha256 arm:          "ff56e5726cca14e9f1273e5f72e654eb695e2374e9d2e1fdb454135e03a7df3a",
         intel:        "3478645a78ea0859cf0080e446e8f5e5a157981a58e1b6d0fdf7a0cdeada474c",
         arm64_linux:  "513fda28ac28c02f5728d17cc7482d811956934c3fdc4ce12c7c75589fa31ad2",
         x86_64_linux: "15015483a17f68448eb276f875b379829c9020a6acfc4c846b0c16a46889242a"

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
